theory Geometry_Problem_F_Midpoint_DE
  imports "HOL-Analysis.Euclidean_Space"
begin
type_synonym point = "real^2"
definition is_midpoint :: "point ⇒ point ⇒ point ⇒ bool" where
  "is_midpoint M A B ≡ M = (A + B) / (2::real)"
locale two_intersecting_circles_tangents =
  fixes O P A B C D E F :: point 
  fixes rO rP :: real            
  assumes
    rO_gt_0: "rO > 0" and
    rP_gt_0: "rP > 0" and
    A_neq_B: "A ≠ B" and
    on_circle_O_A: "dist O A = rO" and 
    on_circle_O_B: "dist O B = rO" and 
    on_circle_P_A: "dist P A = rP" and 
    on_circle_P_B: "dist P B = rP" and 
    C_on_line_BO: "collinear O B C" and
    C_on_line_PA: "collinear P A C" and
    lines_BO_PA_not_parallel: "linear_independent real {B - O, A - P}" and
    C_distinct_O: "C ≠ O" and
    C_distinct_B: "C ≠ B" and
    C_distinct_P: "C ≠ P" and
    C_distinct_A: "C ≠ A" and
    D_on_circle_O: "dist O D = rO" and
    E_on_circle_P: "dist P E = rP" and
    C_neq_D_tangent: "C ≠ D" and
    C_neq_E_tangent: "C ≠ E" and
    tangent_CD_O: "(O - D) ⋅ (C - D) = 0" and 
    tangent_CE_P: "(P - E) ⋅ (C - E) = 0" and 
    F_on_line_DE: "collinear D E F" and
    F_on_line_AB: "collinear A B F" and
    lines_DE_AB_not_parallel: "linear_independent real {E - D, B - A}"
  shows "is_midpoint F D E"
end
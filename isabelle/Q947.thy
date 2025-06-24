theory Geometry_Problem
  imports "HOL-Analysis.Euclidean_Space"
begin
type_synonym point = "real^2"
definition three_collinear :: "point ⇒ point ⇒ point ⇒ bool" where
  "three_collinear A B C ≡
    if A = B then C = A
    else ∃t::real. C - A = t * (B - A)"
locale Geometry_Problem_Context =
  fixes P A B O K D E F :: point 
  fixes r :: real 
  assumes
    r_pos: "r > 0" and
    A_on_circle: "dist(O, A) = r" and
    B_on_circle: "dist(O, B) = r" and
    K_on_circle: "dist(O, K) = r" and
    P_neq_A: "P ≠ A" and
    PA_tangent_A: "inner (A - O) (P - A) = 0" and 
    P_neq_B: "P ≠ B" and
    PB_tangent_B: "inner (B - O) (P - B) = 0" and 
    D_on_line_OK: "three_collinear O D K" and
    BD_perp_OK: "inner (D - B) (K - O) = 0" and
    B_not_on_line_OK: "¬ three_collinear O B K" and
    E_on_line_BD: "three_collinear B E D" and
    E_on_line_PK: "three_collinear P E K" and
    F_on_line_BD: "three_collinear B F D" and
    F_on_line_KA: "three_collinear K F A" and
    A_neq_B: "A ≠ B" and 
    A_neq_K: "A ≠ K" and 
    B_neq_K: "B ≠ K" and 
    P_neq_K: "P ≠ K"     
begin
theorem E_is_midpoint_of_BF:
  "E = (B + F) / (2::real)"
  sorry
end 
end 
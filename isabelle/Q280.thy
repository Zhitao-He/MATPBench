theory Geometry_Problem_Formalization
  imports
    "HOL-Analysis.Euclidean_Space" 
    "HOL-Library.Sqrt"           
begin
type_synonym point = "real^2"
locale geometric_setup =
  fixes A :: point and B :: point and C :: point and M :: point and P :: point and r :: real
  assumes
    r_is_positive: "r > 0" and
    B_is_on_circle: "dist P B = r" and
    C_is_on_circle: "dist P C = r" and
    AB_is_tangent_at_B: "(P - B) ⋅ (A - B) = 0" and
    A_neq_B: "A ≠ B" and
    AC_is_tangent_at_C: "(P - C) ⋅ (A - C) = 0" and
    A_neq_C: "A ≠ C" and
    M_is_midpoint_of_AC: "M = (A + C) / (2::real)" and
    triangle_PMC_isosceles_PC_eq_MC: "dist P C = dist M C"
begin
definition problem_conjecture :: bool where
  "problem_conjecture = (dist P A = r * sqrt (5::real))"
end
end
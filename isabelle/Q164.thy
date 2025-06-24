theory Geometry_Problem_Formalization
  imports
    "HOL-Analysis.Angle"         
    "HOL-Analysis.Euclidean_Space" 
begin
type_synonym point = "real^2"
definition degrees :: "real => real" where
  "degrees d = d * (pi / 180)"
definition angle_at_vertex :: "point => point => point => real" where
  "angle_at_vertex A P B = Angle.angle (A - P) (B - P)"
locale problem_geometry =
  fixes P1 :: point
    and P2 :: point
    and P3 :: point
    and P4 :: point
  assumes P1_not_eq_P4: "P1 ~= P4" 
    and P2_not_eq_P4: "P2 ~= P4" 
    and P3_not_eq_P4: "P3 ~= P4" 
    and P1_not_eq_P3: "P1 ~= P3" 
    and P2_not_eq_P3: "P2 ~= P3" 
  assumes P3P4_orthogonal_P1P4: "(P3 - P4) ⟂ (P1 - P4)"
  assumes P3P4_orthogonal_P2P4: "(P3 - P4) ⟂ (P2 - P4)"
  assumes P1_P2_on_opposite_sides_of_P4: "∃k::real. k > 0 ∧ (P1 - P4) = -k *⇩R (P2 - P4)"
  assumes angle_P3P1P4_equals_25_degrees: "angle_at_vertex P3 P1 P4 = degrees 25"
  assumes angle_P3P2P4_equals_51_degrees: "angle_at_vertex P3 P2 P4 = degrees 51"
begin 
definition angle_2 :: "real" where
  "angle_2 = angle_at_vertex P4 P3 P2"
definition angle_3 :: "real" where
  "angle_3 = angle_at_vertex P4 P3 P1"
end 
context problem_geometry begin
theorem measure_of_angle_2:
  "angle_2 = degrees 39"
  oops 
end 
end
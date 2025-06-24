theory GeometryProblem
  imports
    Main
    "HOL-Analysis.Euclidean_Space" 
begin
type_synonym point = "real^2"
definition angle_at_vertex_is_90 :: "point => point => point => bool" where
  "angle_at_vertex_is_90 X Y Z ⟷ (X - Z) ⋅ (Y - Z) = 0"
definition on_circle_diameter :: "point => point => point => bool" where
  "on_circle_diameter X D1 D2 ⟷ D1 ≠ D2 ∧ (X - D1) ⋅ (X - D2) = 0"
abbreviation dist :: "point => point => real" where
  "dist A B ≡ norm (A - B)"
locale GeoProblem =
  fixes A B C D P :: point 
  assumes
    C_neq_D: "C ≠ D"
    and A_neq_D: "A ≠ D"
    and D_on_segment_CB: "D ∈ line_segment C B"
    and angle_ACB_is_90: "angle_at_vertex_is_90 A B C"
    and P_on_segment_AD: "P ∈ line_segment A D"
    and P_on_circle_with_diameter_CD: "on_circle_diameter P C D"
    and AC_length: "dist A C = 6"
    and BD_length: "dist B D = 2"
begin
lemma AB_length_is_2_sqrt_13:
  "dist A B = 2 * sqrt 13"
  by sorry 
end
end
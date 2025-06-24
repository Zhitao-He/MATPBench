theory Triangle_Properties
  imports "HOL-Analysis.Euclidean_Space"
begin
section "Problem Setup: Triangle ABC"
consts
  A :: "real^2"
  B :: "real^2"
  C :: "real^2"
axiomatization where
  distinct_vertices: "A ≠ B ∧ B ≠ C ∧ A ≠ C" and
  non_collinear_ABC: "¬ collinear {A, B, C}" and
  angle_A_is_right: "angle B A C = pi / 2" and
  side_AB_length: "dist A B = 9" and
  cos_B_value: "cos (angle A B C) = 3/5" and
  cos_C_value: "cos (angle B C A) = 4/5"
end
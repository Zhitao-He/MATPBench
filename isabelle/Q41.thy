theory Geometry_Problem_Formalization
imports
  "HOL-Analysis.Euclidean_Space"
  "HOL-Analysis.More_Euclidean_Space"
begin
type_synonym point = "real^2"
consts O :: point
consts r :: real
axiomatization where
  radius_value: "r = 2.0"
axiomatization A B C D :: point where
  A_on_circle: "norm (A - O) = r" and
  B_on_circle: "norm (B - O) = r" and
  AB_is_diameter: "O = (A + B) / (2::real)" and
  C_on_extension_of_AB: "∃ k :: real. k > 1 ∧ (C - O) = k⇩R * (B - O)" and
  D_on_circle: "norm (D - O) = r" and
  CD_is_tangent_at_D: "(D - O) ⋅ (D - C) = 0" and
  angle_DAC_is_30_degrees: "angle (D - A) (C - A) = pi / 6" and
  length_CD_is_2_sqrt_3: "norm (C - D) = 2 * sqrt 3"
end
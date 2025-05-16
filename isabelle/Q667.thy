theory PowerOfPoint
imports
  Complex_Main
  "HOL-Analysis.Euclidean_Space"
begin
type_synonym point = "real^2"
definition distance :: "point ⇒ point ⇒ real" where
  "distance p q = norm (p - q)"
definition collinear :: "point ⇒ point ⇒ point ⇒ bool" where
  "collinear p q r ⟷ (∃t. (r - p) = t *ᵥ (q - p) ∨ (q - p) = t *ᵥ (r - p))"
definition on_circle :: "point ⇒ point ⇒ real ⇒ bool" where
  "on_circle p center radius ⟷ distance p center = radius"
locale power_of_point =
  fixes A J F G H E :: point
  fixes r x :: real
  assumes on_circle_F: "on_circle F J r"
  assumes on_circle_G: "on_circle G J r"
  assumes on_circle_H: "on_circle H J r"
  assumes on_circle_E: "on_circle E J r"
  assumes F_A_E_collinear: "collinear F A E"
  assumes G_A_H_collinear: "collinear G A H"
  assumes GA_length: "distance G A = 12"
  assumes AH_length: "distance A H = 6"
  assumes AE_length: "distance A E = 5"
  assumes AF_length: "distance A F = x"
theorem (in power_of_point) value_of_x:
  shows "x = 10"
  sorry
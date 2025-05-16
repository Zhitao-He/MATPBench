theory TriangleAreaProblem
imports Main Real
begin
type_synonym point = "real × real"
definition dist :: "point ⇒ point ⇒ real" where
  "dist p₁ p₂ = sqrt((fst p₂ - fst p₁)² + (snd p₂ - snd p₁)²)"
definition cross_product :: "point ⇒ point ⇒ real" where
  "cross_product v₁ v₂ = fst v₁ * snd v₂ - snd v₁ * fst v₂"
definition triangle_area :: "point ⇒ point ⇒ point ⇒ real" where
  "triangle_area p₁ p₂ p₃ = abs(cross_product (fst p₂ - fst p₁, snd p₂ - snd p₁) 
                                             (fst p₃ - fst p₁, snd p₃ - snd p₁)) / 2"
definition perpendicular :: "point ⇒ point ⇒ point ⇒ bool" where
  "perpendicular p₁ p₂ p₃ = (
    (fst p₂ - fst p₁) * (fst p₃ - fst p₂) + (snd p₂ - snd p₁) * (snd p₃ - snd p₂) = 0
  )"
consts A :: point
consts B :: point
consts N :: point
consts S :: point
consts L :: point
consts C :: point
axiomatization where
  dist_AN: "dist A N = 21" and
  dist_BL: "dist B L = 6" and
  dist_BN: "dist B N = 18" and
  dist_SC: "dist S C = 4" and
  perp_BL_NL: "perpendicular B L N" and
  perp_SC_NC: "perpendicular S C N"
theorem area_sum: "triangle_area S B N + triangle_area N B A = 99"
  sorry
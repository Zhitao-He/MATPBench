theory Shaded_Area
  imports
    Main
    "HOL-Analysis.Analysis" 
    "HOL-Analysis.Cartesian_Euclidean_Space" 
    "HOL-Analysis.Jordan_Measure" 
begin
type_synonym point = "real^2"
definition s :: real where
  "s = 2.0" 
definition A :: point where "A = (0.0, 0.0)"
definition B :: point where "B = (s, 0.0)"
definition D :: point where "D = (0.0, s)"
definition C :: point where "C = (s, s)" 
definition Square_ABCD :: "point set" where
  "Square_ABCD = {p. let x = p$1, y = p$2 in 0.0 <= x & x <= s & 0.0 <= y & y <= s}"
definition r_semi :: real where
  "r_semi = s / 2.0" 
definition M_AB :: point where
  "M_AB = (s / 2.0, 0.0)" 
definition Semicircle_AB :: "point set" where
  "Semicircle_AB = {p. inner (p - M_AB) (p - M_AB) <= r_semi*r_semi & p$2 >= 0.0}"
definition M_AD :: point where
  "M_AD = (0.0, s / 2.0)" 
definition Semicircle_AD :: "point set" where
  "Semicircle_AD = {p. inner (p - M_AD) (p - M_AD) <= r_semi*r_semi & p$1 >= 0.0}"
definition Lens_A :: "point set" where
  "Lens_A = Semicircle_AB INTER Semicircle_AD" 
definition Union_Semicircles :: "point set" where
  "Union_Semicircles = Semicircle_AB UNION Semicircle_AD"
definition Region_C :: "point set" where
  "Region_C = Square_ABCD DIFF Union_Semicircles" 
definition Shaded_Region :: "point set" where
  "Shaded_Region = Lens_A UNION Region_C"
lemma problem_claim:
  "area Shaded_Region = 8.0"
oops 
end
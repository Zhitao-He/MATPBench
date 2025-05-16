theory CircleProblem
imports 
  Main
  "HOL-Analysis.Analysis"
begin
definition diameter_A :: "real" where
  "diameter_A = 8"
definition diameter_B :: "real" where
  "diameter_B = 18"
definition diameter_C :: "real" where
  "diameter_C = 11"
definition radius_A :: "real" where
  "radius_A = diameter_A / 2"
definition radius_B :: "real" where
  "radius_B = diameter_B / 2"
definition radius_C :: "real" where
  "radius_C = diameter_C / 2"
definition length_AF :: "real" where
  "length_AF = radius_A"
definition length_AB :: "real" where
  "length_AB = radius_A + radius_B"
definition length_FB :: "real" where
  "length_FB = length_AB - length_AF"
lemma "length_FB = 5"
  unfolding length_FB_def length_AB_def length_AF_def radius_A_def radius_B_def diameter_A_def diameter_B_def
  by simp
theory Cylinder_Volume_Calculation
imports Main "HOL-Library.Transcendental"
begin
definition radius :: real where
  "radius = 5.0" 
definition height :: real where
  "height = 15.0" 
definition volume_of_partial_cylinder :: "real => real => real" where
  "volume_of_partial_cylinder r h = 0.75 * pi * (r^2) * h"
definition V_calculated :: real where
  "V_calculated = volume_of_partial_cylinder radius height"
definition V_expected_rounded :: real where
  "V_expected_rounded = 883.57" 
  For a floating-point approximation, if HOL-Library.Code_Real_Approx_By_Float is imported:
  value "approx_real 10 V_calculated" 
  A lemma could be stated to assert the relationship between V_calculated and V_expected_rounded,
  for example: "abs (V_calculated - V_expected_rounded) < 0.005".
  However, proofs are not requested for this task.
*)
end
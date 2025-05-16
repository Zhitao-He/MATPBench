theory AngleProblem
imports Main Real "HOL-Analysis.Analysis"
begin
type_synonym point = "real × real"
definition angle :: "point → point → point → real" where
  "angle A B C = undefined" 
consts A :: point
consts B :: point
consts C :: point
consts D :: point
consts F :: point
consts I :: point
axiomatization where
  angle_BDF: "angle B D F = 47" and
  angle_CIF: "angle C I F = 112" and
  angle_DFB: "angle D F B = 65"
lemma angle_AFI: "angle A F I = angle D F B"
  by simp
lemma angle_FIA: "angle F I A = 180 - angle C I F"
  by simp
theorem angle_IAF: "angle I A F = 47"
  sorry
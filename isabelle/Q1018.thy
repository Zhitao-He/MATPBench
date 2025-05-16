theory IncenterTangencyBisect
imports Complex_Main "HOL-Analysis.Euclidean_Space"
begin
type_synonym point = "real^2"
definition angle :: "point ⇒ point ⇒ point ⇒ real" where
  "angle A B C = arccos (((B - A) • (C - A)) / (norm (B - A) * norm (C - A)))"
definition segment :: "point ⇒ point ⇒ point set" where
  "segment A B = {(1 - t) *⇩R A + t *⇩R B | t. 0 ≤ t ∧ t ≤ 1}"
definition on_line :: "point ⇒ point ⇒ point ⇒ bool" where
  "on_line P A B ⟷ (∃t. P = (1 - t) *⇩R A + t *⇩R B)"
definition collinear :: "point set ⇒ bool" where
  "collinear S ⟷ (∃A B. A ≠ B ∧ (∀P∈S. on_line P A B))"
definition is_incenter :: "point ⇒ point ⇒ point ⇒ point ⇒ bool" where
  "is_incenter A B C I ⟷ 
   angle B A I = angle I A C ∧
   angle A B I = angle I B C ∧
   angle A C I = angle I C B"
theorem incenter_tangency_bisects:
  fixes A B C O I J D E F :: point
  fixes rO rJ :: real
  assumes "¬ collinear {A, B, C}"
  assumes "norm (A - O) = rO" "norm (B - O) = rO" "norm (C - O) = rO"  
  assumes "is_incenter A B C I"  
  assumes "on_line D A B" "norm (D - J) = rJ"  
  assumes "on_line E A C" "norm (E - J) = rJ"  
  assumes "norm (F - O) = rO"  
  assumes "norm (F - J) = rJ"  
  assumes "(J - O) • (F - O) = rO - rJ"  
  shows "angle B F I = angle I F C"  
sorry
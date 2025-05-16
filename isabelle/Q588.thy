theory AngleProblem
imports Main HOL.Real
begin
typedecl Point
consts angle :: "Point ⇒ Point ⇒ Point ⇒ real"
consts parallel :: "Point ⇒ Point ⇒ Point ⇒ Point ⇒ bool"
axiomatization where
  angle_FOE: "angle F O E = 118" and
  angle_LDA: "angle L D A = 104" and
  parallel_OD_FI: "parallel O D F I"
lemma "angle O F I = 118"
  sorry
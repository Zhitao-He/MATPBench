theory GlobalMaximum
imports 
  Complex_Main
  "HOL-Analysis.Analysis"
begin
definition f :: "real ⇒ real" where
  "f x = 2 * sin x + 2"
theorem global_maximum_of_f_is_4: 
  "(∀x. f x ≤ 4) ∧ (∃x. f x = 4)"
  
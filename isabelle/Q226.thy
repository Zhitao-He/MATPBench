theory Ellipse
imports
  Complex_Main
  "HOL-Analysis.Analysis"
begin
definition ellipse_eq :: "real × real ⇒ bool" where
  "ellipse_eq p ⟷ (fst p)^2 / 81 + (snd p)^2 / 9 = 1"
theorem ellipse_identification:
  "∀C. (∀x y. C (x, y) ⟷ ellipse_eq (x, y)) ⟷ 
        (∀x y. C (x, y) ⟷ (x^2 / 81 + y^2 / 9 = 1))"
  by (simp add: ellipse_eq_def)
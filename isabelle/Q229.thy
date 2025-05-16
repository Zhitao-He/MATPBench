theory Hyperbola
  imports Complex_Main "HOL-Analysis.Analysis"
begin
definition hyperbola_equation :: "real ⇒ real ⇒ real" where
  "hyperbola_equation x y = ((x + 3)^2/25) - ((y + 3)^2/25)"
theorem hyperbola_eq_one:
  "hyperbola_equation x y = 1 ⟷ ((x + 3)^2/25) - ((y + 3)^2/25) = 1"
  by (simp add: hyperbola_equation_def)
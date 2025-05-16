theory GeometryProblem
imports 
  Complex_Main
  HOL.Real
begin
theorem value_x_eq_2_sqrt21:
  fixes A B C D :: "real × real"
  assumes "B ≠ C" and "A ≠ D"
    and "dist A B = y" and "dist B D = 4" and "dist A D = z"
    and "dist C D = 10" and "dist C B = x"
    and "B ∈ segment A D" 
    and "orthogonal (B - A) (C - B)" 
definition orthogonal :: "real × real ⇒ real × real ⇒ bool" where
  "orthogonal v w = (fst v * fst w + snd v * snd w = 0)"
definition segment :: "(real × real) ⇒ (real × real) ⇒ (real × real) set" where
  "segment a b = {p. ∃t. 0 ≤ t ∧ t ≤ 1 ∧ p = (1 - t) • a + t • b}"
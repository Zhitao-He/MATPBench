import Mathlib.Data.Real.Basic




def g (x : ℝ) : ℝ := (x + 2)^2 + 1


theorem graph_g_characterization (x y : ℝ) :
    (y = g x) ↔ (y = (x + 2)^2 + 1) := by sorry
import Mathlib.Data.Real.Basic
import Mathlib.Analysis.SpecialFunctions.Trigonometric.Basic
noncomputable def shapePerimeter (r_l r_s : ℝ) : ℝ :=
  Real.pi * r_l + 4 * Real.pi * r_s
noncomputable def areaOriginalShape (r_l : ℝ) : ℝ :=
  (Real.pi * r_l^2) / 2
def scaleFactor : ℝ := 5
noncomputable def areaAfterScaling (initial_area factor : ℝ) : ℝ :=
  initial_area * factor^2
theorem final_scaled_area_is_correct
  (r_small r_large : ℝ)
  (h_r_small_pos : 0 < r_small)
  (h_r_large_pos : 0 < r_large)
  (h_perimeter_value : shapePerimeter r_large r_small = 14 * Real.pi)
  (h_geometric_relation : r_large = 4 * r_small)
  : areaAfterScaling (areaOriginalShape r_large) scaleFactor = (1225 * Real.pi) / 2 := by
  sorry

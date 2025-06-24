import Mathlib.Data.Real.Basic
namespace AngleProblem
variable (x : ℝ)
def measureOfAngleABD : ℝ := x + 14
def measureOfAngleABF : ℝ := 3 * x - 8
axiom h_bisect : measureOfAngleABF x = 2 * measureOfAngleABD x
axiom h_pos : x > 8/3
theorem measure_ABD_is_50 : measureOfAngleABD x = 50 := by
  sorry
end AngleProblem
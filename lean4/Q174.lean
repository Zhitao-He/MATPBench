import Mathlib.Data.Real.Basic

namespace Parallelogram


def base : ℝ := 21
def height : ℝ := 20
def side : ℝ := 25


def area (b h : ℝ) : ℝ := b * h


theorem area_eq_420 : area base height = 420 := by
  sorry

end Parallelogram
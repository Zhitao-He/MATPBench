import Mathlib.Data.Real.Basic
def sideSmall : ℝ := 10
def areaSmall : ℝ := 25
def sideLarge : ℝ := 18
theorem area_of_green_figure_is_81 :
  let areaLarge := areaSmall * (sideLarge / sideSmall) ^ 2
  areaLarge = 81 := by
  sorry
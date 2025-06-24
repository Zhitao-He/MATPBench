import Mathlib.Data.Real.Basic
def semi_major_axis : ℝ := 9
def semi_minor_axis : ℝ := 3
def point_on_ellipse_from_graph (x y : ℝ) : Prop :=
  x^2 / (semi_major_axis^2) + y^2 / (semi_minor_axis^2) = 1
def target_equation (x y : ℝ) : Prop :=
  x^2 / 81 + y^2 / 9 = 1
theorem determined_equation_is_target_equation :
  ∀ (x y : ℝ), point_on_ellipse_from_graph x y ↔ target_equation x y := by
  sorry 
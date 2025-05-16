import Mathlib.Data.Real.Basic


def g (x : ℝ) : ℝ := -(x ^ 2)


theorem dashed_line_equation : ∀ (x : ℝ), g x = -(x ^ 2) :=
  by sorry


def examplePoint : ℝ × ℝ := (2, -4)


theorem point_examplePoint_lies_on_g : g examplePoint.1 = examplePoint.2 :=
  by sorry
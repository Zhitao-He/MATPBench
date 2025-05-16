import Mathlib.Data.Real.Basic




def rectBounds (p : ℝ × ℝ) : Prop :=
  (0 ≤ p.1 ∧ p.1 ≤ 40) ∧ (0 ≤ p.2 ∧ p.2 ≤ 20)


theorem largestEllipseInRectangleCenter :
  ∃ (centerX centerY rx ry : ℝ),
    centerX = 20 ∧
    centerY = 10 ∧
    (∀ (p : ℝ × ℝ),
      ((p.1 - centerX)^2 / rx^2 + (p.2 - centerY)^2 / ry^2 ≤ 1) →
      rectBounds p) ∧
    rx = 20 ∧
    ry = 10 := by
  sorry
import Mathlib.Data.Real.Basic




def ellipseRelation (x y : ℝ) : Prop :=
  (x + 2)^2 / (1^2) + (y - 2)^2 / (2^2) = 1


theorem ellipseRelation_not_injective :
  ¬ (∀ (x₁ y₁ x₂ y₂ : ℝ),
    ellipseRelation x₁ y₁ →
    ellipseRelation x₂ y₂ →
    x₁ = x₂ → y₁ = y₂) := by sorry
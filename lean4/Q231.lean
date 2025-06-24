import Mathlib.Data.Real.Basic
namespace CakeBoxProblem
def boxCorner₁ : ℝ × ℝ := (0, 0)
def boxCorner₂ : ℝ × ℝ := (40, 20)
noncomputable def rectangleCenter (a b : ℝ × ℝ) : ℝ × ℝ :=
  ((a.1 + b.1) / 2, (a.2 + b.2) / 2)
noncomputable def largestCakeCenter : ℝ × ℝ := rectangleCenter boxCorner₁ boxCorner₂
theorem statedCakeCenterCoordinatesAre20_10 :
    ∃ a b : ℝ, (a, b) = (20, 10) ∧ largestCakeCenter = (a, b) :=
  by sorry
end CakeBoxProblem

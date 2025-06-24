import Mathlib.Data.Real.Basic
namespace CentralAnglesProblem
def angle₁ : ℝ := 90
def angle₂ : ℝ := 84
def angle₃ : ℝ := 24
def fullCircle : ℝ := 360
theorem find_x_value
    (x : ℝ)
    (h : x + angle₁ + angle₂ + angle₃ = fullCircle) :
  x = 162 := by
  sorry
end CentralAnglesProblem
import Mathlib.Geometry.Euclidean.Basic
import Mathlib.Geometry.Euclidean.Angle.Unoriented.Basic
import Mathlib.Analysis.SpecialFunctions.Trigonometric.Basic

noncomputable section

variable {P : Type*} [EuclideanPlane P]

namespace GeometryProblem

-- Declare the points
variable (O A B X : P)

-- Given: A and B are on the circle of radius 10 centered at O
variable (hOA : dist O A = 10)
variable (hOB : dist O B = 10)

-- Given: AB = 10
variable (hAB : dist A B = 10)

-- Given: The (unoriented) angle OBA is 60°
variable (hAngle : ∠ O B A = Real.pi / 3)

-- Given: BX ⟂ OX
variable (hPerp : inner (O -ᵥ X) (B -ᵥ X) = 0)

-- Given: X lies between A and B
variable (hBetween : Wbtw ℝ A X B)

-- Conclusion: AX = 5
theorem length_AX : dist A X = 5 := by
  sorry

end GeometryProblem
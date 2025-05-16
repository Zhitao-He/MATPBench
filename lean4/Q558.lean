import Mathlib.Geometry.Euclidean.Angle.Unoriented.Basic
import Mathlib.Analysis.SpecialFunctions.Trigonometric.Basic
import Mathlib.Data.Real.Basic

open Real EuclideanGeometry Angle

variable {P : Type*} [EuclideanAffineSpace ℝ P] [Fact (2 ≤ FiniteDimensional.finrank ℝ P)]
variable (A B C D : P)

def givenAngleABC : ℝ := (110 / 180) * π
def expectedAngleCBD : ℝ := (70 / 180) * π

theorem measure_of_angle_CBD
    (h_collinear : Collinear ℝ ({A, B, D} : Set P))
    (h_B_ne_A : B ≠ A)
    (h_B_ne_D : B ≠ D)
    (h_between : AffineSegment ℝ A D ∋ B)
    (h_C_not_collinear : ¬ Collinear ℝ ({A, B, C} : Set P))
    (h_angle : ∠ A B C = givenAngleABC) :
    ∠ C B D = expectedAngleCBD := by
  sorry
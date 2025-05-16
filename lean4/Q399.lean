import Mathlib.Geometry.Euclidean.Basic
import Mathlib.Geometry.Euclidean.Angle.Unoriented.Basic
import Mathlib.Analysis.SpecialFunctions.Trigonometric.Basic
import Mathlib.Data.Real.Sqrt

open EuclideanGeometry

/-!
# Sine of angle T in right triangle RST, given sin(R) = 2/5

Let `RST` be a triangle in a 2-dimensional Euclidean affine space, with right angle at `S`.  
Given that `sin(R) = 2/5`, show that `sin(T) = sqrt(21)/5`.
-/

variable {V : Type*} [NormedAddCommGroup V] [InnerProductSpace ℝ V]
variable {P : Type*} [MetricSpace P] [NormedAddTorsor V P]
variable [Fact (FiniteDimensional.finrank ℝ V = 2)]

variable (R S T : P)

theorem sin_T_in_right_triangle_RST
    (h_right_angle : ∠ R S T = Real.Angle.pi / 2)
    (h_sin_R : Real.Angle.sin (∠ S R T) = (2 : ℝ) / 5)
    : Real.Angle.sin (∠ R T S) = Real.sqrt 21 / 5 :=
by sorry
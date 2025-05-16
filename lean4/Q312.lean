import Mathlib.Geometry.Euclidean.Basic
import Mathlib.Geometry.Euclidean.Angle.Unoriented.Basic
import Mathlib.Analysis.SpecialFunctions.Trigonometric.Basic
import Mathlib.Geometry.Euclidean.Angle.Oriented.Affine

open Real EuclideanGeometry

namespace RightTriangleTrigonometry

variable {E : Type*} [NormedAddCommGroup E] [InnerProductSpace ℝ E]
variable {P : Type*} [MetricSpace P] [NormedAddTorsor E P]

variable (A B C : P)

variable (hA_ne_B : A ≠ B)
variable (hB_ne_C : B ≠ C)
variable (hC_ne_A : C ≠ A)

variable (h_right_angle_A : angle B A C = π / 2)

variable (hBC : dist B C = 10)

variable (h_cos_B : cos (angle A B C) = (6 : ℝ) / 10)

theorem tan_C_eq_3_div_4 : tan (angle B C A) = (3 : ℝ) / 4 := by
  sorry

end RightTriangleTrigonometry

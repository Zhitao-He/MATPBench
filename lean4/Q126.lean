import Mathlib.Data.Real.Basic
import Mathlib.Analysis.SpecialFunctions.Trigonometric.Basic
import Mathlib.Geometry.Euclidean.Basic
import Mathlib.Geometry.Euclidean.Angle.Unoriented.Basic
import Mathlib.Geometry.Euclidean.Triangle
open Real
open EuclideanGeometry
variable {V P : Type*}
variable [NormedAddCommGroup V] [InnerProductSpace ℝ V]
variable [MetricSpace P] [NormedAddTorsor V P]
noncomputable def triangleArea (A B C : P) : ℝ := sorry
noncomputable def quadrilateralArea (A B C D : P) : ℝ :=
  triangleArea A B C + triangleArea A D C
theorem area_of_quadrilateral_ABCD_is_100
    (A B C D : P)
    (hA_ne_B : A ≠ B) (hB_ne_C : B ≠ C)
    (hA_ne_D : A ≠ D) (hD_ne_C : D ≠ C)
    (h_angle_ABC : ∠ A B C = π / 2)
    (h_angle_ADC : ∠ A D C = π / 2)
    (h_AD_eq_DC : dist A D = dist D C)
    (h_AB_plus_BC : dist A B + dist B C = 20)
    : quadrilateralArea A B C D = 100 := by
  sorry

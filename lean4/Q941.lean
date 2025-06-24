import Mathlib.Geometry.Euclidean.Basic
import Mathlib.Geometry.Euclidean.Angle.Unoriented.Basic
import Mathlib.Geometry.Euclidean.Triangle
import Mathlib.Data.Real.Basic
import Mathlib.Analysis.SpecialFunctions.Trigonometric.Basic
open Real
open EuclideanGeometry
variable {V : Type*} [NormedAddCommGroup V] [InnerProductSpace ℝ V] [FiniteDimensional ℝ V]
variable {P : Type*} [MetricSpace P] [NormedAddTorsor V P] [AddCommMonoid P] [SMul ℝ P]
theorem angle_equality_in_triangle
    (A B C D E M N : P)
    (h_noncollinear_ABC : ¬ Collinear ℝ ({A, B, C} : Set P))
    (h_D_on_segment_BC : D ∈ segment ℝ B C)
    (h_AD_bisects_BAC : ∠ B A D = ∠ D A C)
    (h_E_is_midpoint_AD : E = midpoint ℝ A D)
    (h_M_on_segment_BE : M ∈ segment ℝ B E)
    (h_N_on_segment_CE : N ∈ segment ℝ C E)
    (h_AMC_is_right_angle : ∠ A M C = π / 2)
    (h_ANB_is_right_angle : ∠ A N B = π / 2)
    : ∠ M B N = ∠ M C N := by
  sorry

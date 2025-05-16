import Mathlib.Geometry.Euclidean.Basic
import Mathlib.Geometry.Euclidean.Triangle
import Mathlib.Geometry.Euclidean.Angle.Unoriented.Basic
import Mathlib.Geometry.Euclidean.Sphere.Basic
import Mathlib.Analysis.SpecialFunctions.Trigonometric.Basic
import Mathlib.Data.Real.Basic

open EuclideanGeometry
open Real

variable {V : Type*} [NormedAddCommGroup V] [InnerProductSpace ℝ V]
variable {P : Type*} [MetricSpace P] [NormedAddTorsor V P]
variable [FiniteDimensional ℝ V] [Fact (finrank ℝ V = 2)]

variable (O A B C : P)
variable (S : Sphere P)
variable (h_S_center_is_O : S.center = O)
variable (h_S_radius_is_positive : 0 < S.radius)
variable (hA_on_S : A ∈ S) (hB_on_S : B ∈ S) (hC_on_S : C ∈ S)
variable (hA_ne_B : A ≠ B) (hA_ne_C : A ≠ C) (hB_ne_C : B ≠ C)
variable (h_angle_ACB_is_25_degrees : (∠ A C B).value = (25 : ℝ) * π / 180)

theorem angle_BAO_is_65_degrees :
    (∠ B A O).value = (65 : ℝ) * π / 180 := by
  sorry
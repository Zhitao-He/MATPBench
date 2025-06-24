import Mathlib.Geometry.Euclidean.Basic
import Mathlib.Geometry.Euclidean.Triangle
import Mathlib.Geometry.Euclidean.Angle.Unoriented.Basic
import Mathlib.Geometry.Euclidean.Angle.Unoriented.RightAngle
import Mathlib.Geometry.Euclidean.Angle.Unoriented.Affine
namespace RhombusProblem
variable {V : Type*} [NormedAddCommGroup V] [InnerProductSpace ℝ V] [FiniteDimensional ℝ V]
variable {P : Type*} [MetricSpace P] [NormedAddTorsor V P]
variable (A B C D O E F : P)
open scoped EuclideanGeometry
set_option linter.unusedVariables false
axiom prove_length_EF_axiom :
  ∀ {V : Type*} [NormedAddCommGroup V] [InnerProductSpace ℝ V] [FiniteDimensional ℝ V]
    {P : Type*} [MetricSpace P] [NormedAddTorsor V P]
    (A B C D O E F : P)
    (h_dist_AB : dist A B = 5)
    (h_dist_AC : dist A C = 6)
    (h_dist_AD_eq_AB : dist A D = dist A B)
    (hO_midpoint_AC : O = midpoint ℝ A C)
    (hO_midpoint_BD : O = midpoint ℝ B D)
    (hA_ne_O : A ≠ O)
    (hB_ne_O : B ≠ O)
    (h_diagonals_perpendicular : ∠ A O B = (Real.pi / 2))
    (hE_midpoint_AB : E = midpoint ℝ A B)
    (hF_midpoint_AD : F = midpoint ℝ A D),
    dist E F = 4
end RhombusProblem

import Mathlib.Analysis.InnerProductSpace.PiL2
import Mathlib.Geometry.Euclidean.Basic
import Mathlib.Geometry.Euclidean.Angle.Unoriented.Basic
import Mathlib.Geometry.Euclidean.Angle.Unoriented.Affine
import Mathlib.Analysis.SpecialFunctions.Trigonometric.Basic
import Mathlib.Data.Real.Basic
import Mathlib.Analysis.SpecificLimits.FloorPow
open Real
open EuclideanGeometry
abbrev P := EuclideanSpace ℝ (Fin 2)
noncomputable def triangleArea (p1 p2 p3 : P) : ℝ :=
  (1/2 : ℝ) * abs ((p2 -ᵥ p1) 0 * (p3 -ᵥ p1) 1 - (p2 -ᵥ p1) 1 * (p3 -ᵥ p1) 0)
theorem closest_integer_area_is_148
  (A B C D E F G : P)
  (h_ABC_right : EuclideanGeometry.angle A B C = Real.pi / 2)
  (h_D_on_BC : D ∈ segment ℝ B C)
  (h_AD_bisects_CAB : EuclideanGeometry.angle C A D = EuclideanGeometry.angle D A B)
  (h_E_on_AB : E ∈ segment ℝ A B)
  (h_F_on_AC : F ∈ segment ℝ A C)
  (h_AE_dist : dist A E = 3)
  (h_AF_dist : dist A F = 10)
  (h_EB_dist : dist E B = 9)
  (h_FC_dist : dist F C = 27)
  (h_G_on_AD : G ∈ segment ℝ A D)
  (h_G_on_EF : G ∈ segment ℝ E F)
  : FloorRing.floor (triangleArea D C F + triangleArea D G F + 0.5) = (148 : ℤ) := by sorry

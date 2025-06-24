import Mathlib.Geometry.Euclidean.Basic
import Mathlib.Geometry.Euclidean.Angle.Unoriented.Basic
import Mathlib.Geometry.Euclidean.Angle.Unoriented.Affine
import Mathlib.Analysis.SpecialFunctions.Trigonometric.Basic
import Mathlib.Data.Real.Basic
import Mathlib.Analysis.InnerProductSpace.PiL2
open Real EuclideanGeometry InnerProductSpace
abbrev P := EuclideanSpace ℝ (Fin 2)
noncomputable def areaOfParallelogramACBD (dist_DB : ℝ) (dist_DN : ℝ) (angle_NAD : ℝ) : ℝ :=
  dist_DB * (dist_DN / Real.tan angle_NAD)
theorem find_area_parallelogram_ACBD
    (A B C D N : P)
    (h_BD_length : dist D B = 22)
    (h_DN_length : dist D N = 18)
    (h_angle_NAD : EuclideanGeometry.angle N A D = (2 * π / 9)) 
    (h_ACBD_is_parallelogram_cond1 : (C -ᵥ A) = (D -ᵥ B))
    (h_ACBD_is_parallelogram_cond2 : (B -ᵥ C) = (A -ᵥ D))
    (h_DN_perp_AN : EuclideanGeometry.angle A N D = π / 2)
    (h_AN_perp_DB : inner ℝ (A -ᵥ N) (B -ᵥ D) = 0) :
  areaOfParallelogramACBD (dist D B) (dist D N) (EuclideanGeometry.angle N A D) = 396 / Real.tan (2 * π / 9) :=
by
  sorry

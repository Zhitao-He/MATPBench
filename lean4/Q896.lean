import Mathlib.Geometry.Euclidean.Basic
import Mathlib.Geometry.Euclidean.Angle.Unoriented.Affine
import Mathlib.Geometry.Euclidean.Triangle
import Mathlib.Analysis.SpecialFunctions.Trigonometric.Basic
import Mathlib.Analysis.SpecialFunctions.Sqrt
import Mathlib.Data.Real.Basic
import Mathlib.Analysis.InnerProductSpace.PiL2
open Real EuclideanGeometry
open scoped EuclideanGeometry
abbrev P := EuclideanSpace ℝ (Fin 2)
theorem area_of_parallelogram_EHGF
  (E H G F D : P)
  (eh_dist : dist E H = 9)
  (hg_dist : dist H G = 15)
  (angle_EHD_is_45_degrees : ∠ E H D = Real.pi / 4)
  (is_parallelogram_EHGF : H -ᵥ E = G -ᵥ F)
  (angle_EDG_is_right_angle : ∠ E D G = Real.pi / 2)
  (points_H_D_G_collinear : Collinear ℝ ({H, D, G} : Set P))
  : (dist H G) * (dist E D) = 135 * Real.sqrt 2 / 2 := by
  sorry

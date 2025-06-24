import Mathlib.Data.Real.Basic
import Mathlib.Geometry.Euclidean.Basic
import Mathlib.Geometry.Euclidean.Angle.Unoriented.Affine
import Mathlib.Analysis.SpecialFunctions.Sqrt
import Mathlib.Analysis.InnerProductSpace.PiL2
open scoped EuclideanGeometry Real
abbrev P := EuclideanSpace ℝ (Fin 3)
theorem angle_ABD_eq_pi_div_4
  (A B C D : P)
  (s : ℝ)
  (h_s_pos : s > 0)
  (h_AB : dist A B = s)
  (h_AD : dist A D = s)
  (h_BC : dist B C = s)
  (h_CD : dist C D = s)
  (h_BCD : EuclideanGeometry.angle B C D = π / 2)
  :
  EuclideanGeometry.angle A B D = π / 4 := by
  sorry

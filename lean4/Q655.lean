import Mathlib.Geometry.Euclidean.Basic
import Mathlib.Geometry.Euclidean.Angle.Unoriented.Basic
import Mathlib.Geometry.Euclidean.Angle.Unoriented.Affine
import Mathlib.Data.Real.Basic
import Mathlib.Analysis.InnerProductSpace.PiL2
noncomputable def degreesToRadians (d : ℝ) : ℝ := d * (Real.pi / 180)
abbrev P := EuclideanSpace ℝ (Fin 2)
open EuclideanGeometry
theorem find_angle_DGA
  (A B C D E F G : P)
  (hAD : A ≠ D) (hDG : D ≠ G) (hGA : G ≠ A)
  (hAG : A ≠ G) (hGF : G ≠ F)
  (hGB : G ≠ B) (hCB : C ≠ B)
  (hFC : F ≠ C) (hEF : E ≠ F)
  (h_ADG_val : EuclideanGeometry.angle A D G = degreesToRadians 36)
  (h_AGF_val : EuclideanGeometry.angle A G F = degreesToRadians 104)
  (h_EFC_val : EuclideanGeometry.angle E F C = degreesToRadians 40)
  (h_GBC_perp : EuclideanGeometry.angle G B C = Real.pi / 2)
  (h_sbtw_DGF : Sbtw ℝ D G F)
  : EuclideanGeometry.angle D G A = degreesToRadians 76 :=
by
  sorry

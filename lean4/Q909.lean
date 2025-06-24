import Mathlib.Analysis.InnerProductSpace.PiL2
import Mathlib.Data.Real.Basic
import Mathlib.Geometry.Euclidean.Basic
import Mathlib.Geometry.Euclidean.Angle.Unoriented.Basic
import Mathlib.Geometry.Euclidean.Angle.Unoriented.Affine
abbrev P := EuclideanSpace ℝ (Fin 2)
noncomputable def degToRad (d : ℝ) : ℝ := d * Real.pi / 180
theorem find_angle_BDC (
  A B C D F : P)
  (hBA : dist B A = 6)
  (hDA : dist D A = 9)
  (hDC : dist D C = 7)
  (hBAF : EuclideanGeometry.angle B A F = degToRad 32)
  (hCBF : EuclideanGeometry.angle C B F = degToRad 40)
  (hFAD : EuclideanGeometry.angle F A D = degToRad 20)
  (hADCB_parallelogram : (D -ᵥ A) = (C -ᵥ B))
  (hAngleSumBAD : EuclideanGeometry.angle B A D = EuclideanGeometry.angle B A F + EuclideanGeometry.angle F A D)
  (hAngleCBD_eq_CBF : EuclideanGeometry.angle C B D = EuclideanGeometry.angle C B F)
  : EuclideanGeometry.angle B D C = degToRad 88 := by sorry

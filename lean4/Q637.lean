import Mathlib.Data.Real.Basic
import Mathlib.Geometry.Euclidean.Angle.Unoriented.Affine
import Mathlib.Analysis.InnerProductSpace.PiL2
import Mathlib.Geometry.Euclidean.Basic
open Real
noncomputable abbrev PPoint := EuclideanSpace ℝ (Fin 2)
noncomputable def degToRad (d : ℝ) : ℝ := d * (π / 180)
theorem target_angle_GCF_is_26_degrees
  (A B C D E F G : PPoint)
  (h_angle_DAC_value : EuclideanGeometry.angle D A C = degToRad 42)
  (h_angle_CFG_value : EuclideanGeometry.angle C F G = degToRad 77)
  (h_CDE_equilateral : dist C D = dist D E ∧ dist D E = dist E C)
  (h_CAB_isosceles_CA_eq_CB : dist C A = dist C B)
  (h_CAB_not_collinear : ¬ Collinear ℝ ({C, A, B} : Set PPoint))
  (h_CFG_isosceles_CF_eq_CG : dist C F = dist C G)
  (h_CFG_not_collinear : ¬ Collinear ℝ ({C, F, G} : Set PPoint)) :
  EuclideanGeometry.angle G C F = degToRad 26 :=
  sorry

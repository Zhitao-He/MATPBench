import Mathlib.Analysis.InnerProductSpace.PiL2
import Mathlib.Geometry.Euclidean.Basic
import Mathlib.Geometry.Euclidean.Angle.Unoriented.Basic
import Mathlib.Geometry.Euclidean.Angle.Unoriented.Affine
import Mathlib.Data.Real.Basic
open Real EuclideanGeometry
abbrev P := EuclideanSpace ℝ (Fin 2)
noncomputable def degToRad (d : ℝ) : ℝ := d * Real.pi / 180
theorem angle_CDE_is_45_degrees
  (A B C D E F : P)
  (h_ABC_not_collinear : ¬ Collinear ℝ {A, B, C})
  (hD_on_AC : D ∈ segment ℝ A C)
  (hE_on_BC : E ∈ segment ℝ B C)
  (h_BD_bisects_ABC : EuclideanGeometry.angle A B D = EuclideanGeometry.angle D B C)
  (h_angle_ABD : EuclideanGeometry.angle A B D = degToRad 35)
  (h_angle_ACB : EuclideanGeometry.angle A C B = degToRad 50)
  (hF_on_line_AE : F ∈ affineSpan ℝ {A, E})
  (hF_on_line_BD : F ∈ affineSpan ℝ {B, D})
  (hA_ne_F : A ≠ F)
  (hB_ne_F : B ≠ F)
  (h_AE_perp_BD_at_F : EuclideanGeometry.angle A F B = Real.pi / 2)
  : EuclideanGeometry.angle C D E = degToRad 45 := by sorry

import Mathlib.Analysis.InnerProductSpace.PiL2
import Mathlib.Geometry.Euclidean.Angle.Unoriented.Affine
import Mathlib.Data.Real.Basic
open Real EuclideanGeometry
abbrev P := EuclideanSpace ℝ (Fin 2)
noncomputable def degToRad (d : ℝ) : ℝ := d * (π / 180)
theorem angle_BAO_is_65_degrees
  (O A B C : P)
  (r : ℝ) (hr_pos : r > 0)
  (hA_on_circle : dist A O = r)
  (hB_on_circle : dist B O = r)
  (hC_on_circle : dist C O = r)
  (hne_C_A : C ≠ A) (hne_C_B : C ≠ B) (hne_A_B : A ≠ B)
  (h_ACB : EuclideanGeometry.angle A C B = degToRad 25)
  : EuclideanGeometry.angle B A O = degToRad 65 := by
  sorry

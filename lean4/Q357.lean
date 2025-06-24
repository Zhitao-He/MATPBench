import Mathlib.Data.Real.Basic
import Mathlib.Geometry.Euclidean.Basic
import Mathlib.Geometry.Euclidean.Angle.Unoriented.Affine
import Mathlib.Analysis.SpecialFunctions.Trigonometric.Basic
import Mathlib.Analysis.InnerProductSpace.PiL2
open scoped EuclideanGeometry Real
abbrev P := EuclideanSpace ℝ (Fin 2)
noncomputable def degToRad (d : ℝ) : ℝ := d * (π / 180)
noncomputable def pointReflection (O A : P) : P := sorry
theorem circle_angle_theorem
    (O A B C D : P)
    (r : ℝ)
    (hr_pos : r > 0)
    (hA_on_circle : dist A O = r)
    (hB_on_circle : dist B O = r)
    (hC_diam : C = pointReflection O A)
    (hD_diam : D = pointReflection O B)
    (h_angle_AOD_measure : EuclideanGeometry.angle A O D = degToRad 54)
  : EuclideanGeometry.angle A O B = degToRad 126 := by
  sorry

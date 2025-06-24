import Mathlib.Analysis.InnerProductSpace.PiL2 
import Mathlib.Geometry.Euclidean.Basic
import Mathlib.Geometry.Euclidean.Angle.Unoriented.Affine 
import Mathlib.Data.Real.Basic
open Real
noncomputable def degToRad (d : ℝ) : ℝ := d * (π / 180)
abbrev PPoint := EuclideanSpace ℝ (Fin 2) 
theorem isosceles_triangle_angle_equality
    (P Q U : PPoint ) 
    (h_lengths_equal : dist P Q = dist U Q)
    (h_angle_qpu : EuclideanGeometry.angle Q P U = degToRad 32) 
    : EuclideanGeometry.angle P U Q = degToRad 32 := by 
  sorry

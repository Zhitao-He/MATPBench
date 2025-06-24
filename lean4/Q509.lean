import Mathlib.Geometry.Euclidean.Basic
import Mathlib.Geometry.Euclidean.Angle.Unoriented.Affine 
import Mathlib.Analysis.SpecialFunctions.Trigonometric.Basic 
import Mathlib.Data.Real.Basic
import Mathlib.Analysis.InnerProductSpace.PiL2 
import Mathlib.Data.Real.Pi.Bounds 
open EuclideanGeometry Real
open scoped EuclideanGeometry 
abbrev P := EuclideanSpace ℝ (Fin 2) 
noncomputable def degToRad (d : ℝ) : ℝ := d * (Real.pi / 180)
variable (A B C D : P) 
variable (x_deg : ℝ)
variable (hA_ne_B : A ≠ B)
variable (hC_ne_B : C ≠ B)
variable (hD_ne_B : D ≠ B)
variable (h_angle_ABD_measure : ∠ A B D = degToRad 130)
variable (h_angle_DBC_measure : ∠ D B C = degToRad 95)
variable (h_angle_CBA_measure : ∠ C B A = degToRad x_deg)
variable (h_sum_to_2pi : ∠ A B D + ∠ D B C + ∠ C B A = 2 * Real.pi)
theorem find_x_value : x_deg = 135 := by
  sorry

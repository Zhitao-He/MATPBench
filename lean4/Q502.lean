import Mathlib.Geometry.Euclidean.Basic
import Mathlib.Geometry.Euclidean.Angle.Unoriented.Affine 
import Mathlib.Analysis.SpecialFunctions.Trigonometric.Basic
import Mathlib.Analysis.SpecialFunctions.Trigonometric.Inverse
import Mathlib.Analysis.InnerProductSpace.PiL2 
import Mathlib.Data.Real.Basic 
import Mathlib.Data.Real.Pi.Bounds 
open Real EuclideanGeometry
open scoped EuclideanGeometry 
abbrev P := EuclideanSpace ℝ (Fin 2)
variable (R S T : P)
variable (h_RS : dist R S = 5)
variable (h_TR : dist T R = 6)
variable (h_TS : dist T S = 3)
variable (x : ℝ)
variable (h_angle_SRT_eq_x_degrees : (∠ S R T) * (180 / Real.pi) = x)
theorem find_value_of_x : x = 180 * Real.arccos (13 / 15) / Real.pi := by
  sorry

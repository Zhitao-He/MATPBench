import Mathlib.Geometry.Euclidean.Basic
import Mathlib.Geometry.Euclidean.Angle.Unoriented.Affine 
import Mathlib.Analysis.SpecialFunctions.Trigonometric.Basic
import Mathlib.Analysis.InnerProductSpace.PiL2 
import Mathlib.LinearAlgebra.FiniteDimensional.Defs 
import Mathlib.Data.Real.Basic 
open Real EuclideanGeometry
abbrev PPoint := EuclideanSpace ℝ (Fin 2)
noncomputable def radiansToDegrees (r : ℝ) : ℝ :=
  r * (180 / Real.pi)
theorem problem_to_solve (D H B F A : PPoint)
  (h_DHB_angle : radiansToDegrees (angle D H B) = 38)
  (h_FDA_angle : radiansToDegrees (angle F D A) = 52)
  (h_HBD_is_right : radiansToDegrees (angle H B D) = 90)
  : radiansToDegrees (angle H D F) = 128 := by
  sorry

import Mathlib.Analysis.InnerProductSpace.PiL2
import Mathlib.Geometry.Euclidean.Angle.Unoriented.Affine
import Mathlib.Analysis.SpecialFunctions.Trigonometric.Basic
import Mathlib.Data.Real.Basic
open Real EuclideanGeometry
abbrev PPoint := EuclideanSpace ℝ (Fin 2)
theorem rst_is_isosceles
  (R S T : PPoint)
  (x : ℝ)
  (h_rs : dist R S = 3 * x - 5)
  (h_rt : dist R T = 2 * x + 7)
  (h_eq : dist R T = dist R S)
  (h_st : dist S T = 22) :
  (dist R S = dist R T) ∨ (dist R S = dist S T) ∨ (dist R T = dist S T) := by
 sorry

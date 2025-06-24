import Mathlib.Data.Real.Basic
import Mathlib.Data.Real.Sqrt
import Mathlib.Analysis.InnerProductSpace.PiL2 
import Mathlib.Geometry.Euclidean.Angle.Unoriented.Affine 
open scoped Real
namespace RightTriangleProblem
abbrev PPoint := EuclideanSpace ℝ (Fin 2) 
theorem value_of_x (A B C : PPoint) (x : ℝ)
  (hAB : dist A B = 18)
  (hAC : dist A C = 9)
  (hBC : dist B C = x)
  (h_x_pos : x > 0)
  (h_angle_BCA_is_right : EuclideanGeometry.angle B C A = (Real.pi / 2)) :
  x = 9 * Real.sqrt 3 := by 
  sorry
end RightTriangleProblem

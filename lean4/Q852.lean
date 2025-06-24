import Mathlib.Geometry.Euclidean.Basic
import Mathlib.Geometry.Euclidean.Angle.Unoriented.Affine
import Mathlib.Data.Real.Basic
import Mathlib.Data.Real.Sqrt
import Mathlib.Analysis.SpecialFunctions.Trigonometric.Basic
import Mathlib.Analysis.InnerProductSpace.PiL2
open Real
namespace GeometryProblem
abbrev P := EuclideanSpace ℝ (Fin 2)
theorem value_of_y
  (A B C E : P)
  (a b c x y : ℝ)
  (h_BA : dist B A = c)
  (h_BC : dist B C = a)
  (h_BE : dist B E = x)
  (h_CA : dist C A = b)
  (h_EA : dist E A = y)
  (h_x_val : x = 7 * sqrt 3)
  (h_angle_CAE : EuclideanGeometry.angle C A E = π / 6)      
  (h_angle_EBC : EuclideanGeometry.angle E B C = π / 3)      
  (h_AE_perp_CE : EuclideanGeometry.angle A E C = π / 2)     
  (h_BC_perp_AC : EuclideanGeometry.angle B C A = π / 2)     
  : y = 21 * sqrt 3 :=
  sorry
end GeometryProblem

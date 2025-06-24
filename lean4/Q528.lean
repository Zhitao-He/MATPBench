import Mathlib.Data.Real.Basic
import Mathlib.Geometry.Euclidean.Basic
import Mathlib.Geometry.Euclidean.Angle.Unoriented.Affine 
import Mathlib.Analysis.InnerProductSpace.PiL2 
import Mathlib.Data.Real.Pi.Bounds 
import Mathlib.Data.Real.Sqrt 
open EuclideanGeometry Real
open scoped EuclideanGeometry 
namespace RightTriangleProblem
abbrev P := EuclideanSpace ℝ (Fin 2)
variable (A B C : P)
variable (x : ℝ)
variable (h_AB : dist A B = 10)
variable (h_AC : dist A C = 6)
variable (h_BC : dist B C = x)
variable (h_x_pos : x > 0)
variable (h_perp : ∠ A C B = Real.pi / 2) 
theorem value_of_x : x = 8 := by sorry
end RightTriangleProblem

import Mathlib.Data.Real.Basic
import Mathlib.Geometry.Euclidean.Basic
import Mathlib.Geometry.Euclidean.Angle.Unoriented.Basic
import Mathlib.Analysis.InnerProductSpace.EuclideanDist
import Mathlib.Geometry.Euclidean.Angle.Unoriented.Basic
import Mathlib.Analysis.SpecialFunctions.Trigonometric.Basic
open EuclideanGeometry


abbrev Point := EuclideanSpace ℝ (Fin 2)

namespace RightTriangleSideLengthProblem

variable (A B C : Point)
variable (x : ℝ)


variable (hAB : dist A B = 10)
variable (hAC : dist A C = 6)
variable (hBC : dist B C = x)
variable (h_right : angle A C B = Real.pi / 2)

theorem value_of_x_eq_8 : x = 8 := by sorry

end RightTriangleSideLengthProblem

import Mathlib.Data.Real.Basic
import Mathlib.Geometry.Euclidean.Basic
import Mathlib.Geometry.Euclidean.Angle.Unoriented.Basic

/-!
Formalization of the geometry problem:
In △ABC, AB = 10, AC = 6, angle ACB is a right angle (that is, AC ⟂ BC),
BC = x. Prove that x = 8.
-/

abbrev Point := EuclideanSpace ℝ (Fin 2)

namespace RightTriangleSideLengthProblem

variable (A B C : Point)
variable (x : ℝ)

-- Hypotheses: side lengths and right angle at C
variable (hAB : dist A B = 10)
variable (hAC : dist A C = 6)
variable (hBC : dist B C = x)
variable (h_right : ∠ A C B = Real.pi / 2)

theorem value_of_x_eq_8 : x = 8 := by sorry

end RightTriangleSideLengthProblem
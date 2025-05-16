import Mathlib.Data.Real.Basic
import Mathlib.Geometry.Euclidean.Angle.Unoriented.Basic
import Mathlib.Geometry.Euclidean.Basic

open EuclideanGeometry Real

namespace ProblemValueOfX

variable {P : Type*} [NormedAddCommGroup P] [InnerProductSpace ℝ P]
variable [Fact (finrank ℝ P = 2)]

variable (A B C D : P)
variable (x : ℝ)

axiom hAC : dist A C = 18
axiom hAD : dist A D = 24
axiom hBC : dist B C = x
axiom hBD : dist B D = 9

axiom hAngleEq : angle C A B = angle D A B

theorem value_of_x : x = 27 / 4 := by
  sorry

end ProblemValueOfX
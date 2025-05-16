import Mathlib.Geometry.Euclidean.Basic
import Mathlib.Geometry.Euclidean.Angle.Unoriented.Basic
import Mathlib.Geometry.Euclidean.Triangle
import Mathlib.Analysis.SpecialFunctions.Trigonometric.Basic

open scoped Real
open EuclideanGeometry

namespace EuclideanProblemSolution

variable {V : Type*} [NormedAddCommGroup V] [InnerProductSpace ℝ V]
variable [FiniteDimensional ℝ V]
variable {P : Type*} [MetricSpace P] [NormedAddTorsor V P]
variable (hdim : FiniteDimensional.finrank ℝ V = 2)

variable (A B C D : P)

axiom h_dist_DA : dist D A = 3
axiom h_C_midpoint_DB : C = midpoint ℝ D B
axiom h_angle_DCA_right : angle D C A = π / 2

def triangle_DCA : EuclideanGeometry.Triangle P := ⟨D, C, A⟩
def triangle_BCA : EuclideanGeometry.Triangle P := ⟨B, C, A⟩

theorem length_AB_is_3 : dist A B = 3 := by
  sorry

end EuclideanProblemSolution
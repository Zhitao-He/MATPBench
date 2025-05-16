import Mathlib.Data.Real.Basic
import Mathlib.Geometry.Euclidean.Basic
import Mathlib.Geometry.Euclidean.Basic
import Mathlib.Analysis.InnerProductSpace.EuclideanDist
import Mathlib.Geometry.Euclidean.Triangle

abbrev EuclideanPlane := EuclideanSpace ℝ (Fin 2)

section GeometryProblem


variable (A B C : EuclideanPlane)
variable (rA rB rC : ℝ)


axiom h_rA_pos : rA > 0
axiom h_rB_pos : rB > 0
axiom h_rC_pos : rC > 0




axiom h_sum_radii : rA + rB + rC = 21


axiom h_rA_twice_rB : rA = 2 * rB


axiom h_rA_four_rC : rA = 4 * rC


axiom h_CB_tangent : dist C B = rC + rB


axiom h_BA_tangent : dist B A = rB + rA



axiom h_collinear : dist C A = dist C B + dist B A


theorem length_AC_is_27 : dist A C = 27 := by
  sorry

end GeometryProblem

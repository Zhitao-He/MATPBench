import Mathlib.Geometry.Euclidean.Basic
import Mathlib.Data.Real.Basic
import Mathlib.Analysis.InnerProductSpace.PiL2
import Mathlib.Geometry.Euclidean.Angle.Unoriented.Affine
open scoped Real EuclideanGeometry
namespace ArbelosProblem
abbrev P := EuclideanSpace ℝ (Fin 2)
noncomputable def semiCircleArea (r : ℝ) : ℝ := (Real.pi * r ^ 2) / 2
noncomputable def arbelosShadedArea (rO rK rM : ℝ) : ℝ :=
  semiCircleArea rO - semiCircleArea rK - semiCircleArea rM
theorem problem_statement
  (A B C : P)
  (h_collinear_ACB : Sbtw ℝ A C B)
  (h_dist_OC : dist (midpoint ℝ A B) C = 32)
  (h_dist_CB : dist C B = 36) :
  let rK := dist A C / 2
  let rM := dist C B / 2
  let rO := dist A B / 2
  arbelosShadedArea rO rK rM = 900 * Real.pi := by sorry
end ArbelosProblem

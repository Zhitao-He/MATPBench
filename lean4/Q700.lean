import Mathlib.Geometry.Euclidean.Basic
import Mathlib.Geometry.Euclidean.Triangle
import Mathlib.Geometry.Euclidean.Angle.Unoriented.RightAngle
abbrev EuclideanPlane := EuclideanSpace ℝ (Fin 2)
namespace ParallelogramAreaProblem
variable (A C B S D : EuclideanPlane)
axiom h_CB_length : dist C B = 40
axiom h_DB_length : dist D B = 38
axiom h_SD_length : dist S D = 28
axiom h_is_parallelogram_ACBS : (C -ᵥ A) = (B -ᵥ S)
axiom h_BD_perp_SD : inner ℝ (B -ᵥ D) (S -ᵥ D) = 0
axiom h_collinear_ASD : Collinear ℝ ({A, S, D} : Set EuclideanPlane)
noncomputable def areaOfQuadrilateralACBS (A C _ S : EuclideanPlane) : ℝ :=
  let vecAC := C -ᵥ A
  let vecAS := S -ᵥ A
  abs ( (vecAC 0) * (vecAS 1) - (vecAC 1) * (vecAS 0) )
theorem prove_area_ACBS : areaOfQuadrilateralACBS A C B S = 1520 := by
  sorry
end ParallelogramAreaProblem

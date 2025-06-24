import Mathlib.Data.Real.Basic
import Mathlib.Geometry.Euclidean.Basic
import Mathlib.Geometry.Euclidean.Angle.Unoriented.Affine
import Mathlib.LinearAlgebra.FiniteDimensional.Basic
import Mathlib.LinearAlgebra.AffineSpace.AffineSubspace.Basic
import Mathlib.Analysis.InnerProductSpace.PiL2 
open Affine AffineSubspace FiniteDimensional EuclideanGeometry
namespace EuclideanGeometryProblem
abbrev PPoint := EuclideanSpace ℝ (Fin 2)
noncomputable def triangleArea (p1 p2 p3 : PPoint) : ℝ :=
  (1/2 : ℝ) * abs (((p2 -ᵥ p1) 0 * (p3 -ᵥ p1) 1) - ((p2 -ᵥ p1) 1 * (p3 -ᵥ p1) 0))
structure ProblemSetup where
  A : PPoint
  B : PPoint
  C : PPoint
  D : PPoint
  E : PPoint
  hB_ne_C : B ≠ C
  hD_ne_E : D ≠ E
  bases_parallel : line[ℝ, B, C] ∥ line[ℝ, D, E]
  large_triangle_area_nonzero : triangleArea A D E ≠ 0
  area_ratio_eq_4_div_25 :
    triangleArea A B C /
    triangleArea A D E = (4 : ℝ) / (25 : ℝ)
end EuclideanGeometryProblem

import Mathlib.Geometry.Euclidean.Basic
import Mathlib.Data.Real.Basic
import Mathlib.Analysis.Convex.Between
import Mathlib.LinearAlgebra.AffineSpace.AffineSubspace.Basic
import Mathlib.Analysis.InnerProductSpace.PiL2
import Mathlib.LinearAlgebra.FiniteDimensional.Defs
import Mathlib.Geometry.Euclidean.Angle.Unoriented.Affine
open Real EuclideanGeometry Affine AffineSubspace
abbrev PPoint := EuclideanSpace ℝ (Fin 2)
namespace EuclideanGeometryProblem
variable (X Y Z M N : PPoint)
variable (h_XN : dist X N = 6)
variable (h_NZ : dist N Z = 9)
variable (h_XM : dist X M = 4)
open Convex
variable (h_sbtw_X_N_Z : Sbtw ℝ X N Z)
variable (h_sbtw_X_M_Y : Sbtw ℝ X M Y)
variable (h_N_ne_M : N ≠ M)
variable (h_Z_ne_Y : Z ≠ Y)
variable (h_parallel_NM_ZY : line[ℝ, N, M] ∥ line[ℝ, Z, Y])
variable (find_XY : dist X Y = 10)
end EuclideanGeometryProblem

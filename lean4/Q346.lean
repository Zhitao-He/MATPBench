import Mathlib.Data.Real.Basic
import Mathlib.Geometry.Euclidean.Basic
import Mathlib.Analysis.InnerProductSpace.PiL2
import Mathlib.LinearAlgebra.AffineSpace.AffineSubspace.Basic
open scoped EuclideanGeometry
open Affine AffineSubspace
noncomputable section ProblemDefinition
abbrev EucPlane := EuclideanSpace ℝ (Fin 2)
noncomputable def u_point (A B : EucPlane) := midpoint ℝ A B
noncomputable def v_point (A B : EucPlane) := midpoint ℝ B A
noncomputable def w_point (A B : EucPlane) := midpoint ℝ A B
noncomputable def u_point_orig (P Q : EucPlane) := midpoint ℝ P Q
noncomputable def v_point_orig (P R0 : EucPlane) := midpoint ℝ R0 P
noncomputable def w_point_orig (Q R0 : EucPlane) := midpoint ℝ Q R0
noncomputable def triangleArea (p1 p2 p3 : EucPlane) : ℝ :=
  (1/2 : ℝ) * abs ( ((p2 -ᵥ p1) 0 * (p3 -ᵥ p1) 1) - ((p2 -ᵥ p1) 1 * (p3 -ᵥ p1) 0) )
lemma area_triangle_from_vertex_and_midpoints (A B C : EucPlane) :
  triangleArea A (midpoint ℝ A B) (midpoint ℝ A C) = (1 / 4 : ℝ) * triangleArea A B C := by sorry
lemma area_triangle_cyclic_invariant (A B C : EucPlane) :
  triangleArea A B C = triangleArea B C A := by sorry
structure IsParallelogram (A B C D : EucPlane) where
  side_AB_eq_side_DC : B -ᵥ A = C -ᵥ D
lemma parallelogram_diagonal_splits_area_equally (A B C D : EucPlane) (h_par : IsParallelogram A B C D) :
  triangleArea A B D = triangleArea C D B := by sorry
lemma uvrw_is_parallelogram (P_lem Q_lem R0_lem : EucPlane) :
  IsParallelogram (u_point_orig P_lem Q_lem) (v_point_orig P_lem R0_lem) R0_lem (w_point_orig Q_lem R0_lem) := by sorry
theorem area_parallelogram_UVRW_is_one_half
  (P Q R0 S T U_vert : EucPlane)
  (h_R0_is_mid_ST : R0 = midpoint ℝ S T)
  (h_V_eq_mid_TU : (v_point_orig P R0) = midpoint ℝ T U_vert)
  (h_W_eq_mid_US : (w_point_orig Q R0) = midpoint ℝ U_vert S)
  (h_area_PQR0 : triangleArea P Q R0 = 1)
  (h_area_STU_vert : triangleArea S T U_vert = 1)
  : 2 * (triangleArea R0 (w_point_orig Q R0) (v_point_orig P R0)) = (1 / 2 : ℝ) := by sorry
end ProblemDefinition

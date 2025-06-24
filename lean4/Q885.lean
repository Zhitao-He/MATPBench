import Mathlib.Data.Real.Basic
import Mathlib.Analysis.InnerProductSpace.PiL2
import Mathlib.LinearAlgebra.FiniteDimensional.Basic
import Mathlib.Geometry.Euclidean.Basic
import Mathlib.Geometry.Euclidean.Angle.Unoriented.Basic
import Mathlib.Geometry.Euclidean.Angle.Unoriented.Affine
import Mathlib.LinearAlgebra.AffineSpace.AffineSubspace.Basic
import Mathlib.Data.Real.Pi.Bounds
import Mathlib.Analysis.Convex.Side
open Real InnerProductSpace AffineSubspace Angle
open scoped EuclideanGeometry
abbrev E := EuclideanSpace ℝ (Fin 2)
namespace ProblemFormalization
noncomputable def degToRad (d : ℝ) : ℝ := d * Real.pi / 180
theorem target_angle_BPO
  (P O M F B Q K C G J H N : E)
  (hKPO : Collinear ℝ ({K, P, O} : Set E))
  (hPOC : Collinear ℝ ({P, O, C} : Set E))
  (hGHN : Collinear ℝ ({G, H, N} : Set E))
  (hHNJ : Collinear ℝ ({H, N, J} : Set E))
  (hFPB : Collinear ℝ ({F, P, B} : Set E))
  (hPBH : Collinear ℝ ({P, B, H} : Set E))
  (hQMO : Collinear ℝ ({Q, M, O} : Set E))
  (hMON : Collinear ℝ ({M, O, N} : Set E))
  (hP_ne_O : P ≠ O)
  (hP_ne_B : P ≠ B)
  (hO_ne_M : O ≠ M)
  (hF_ne_B : F ≠ B)
  (hQ_ne_M : Q ≠ M)
  (hK_ne_C : K ≠ C)
  (hG_ne_J : G ≠ J)
  (hFB_parallel_QM : Parallel (affineSpan ℝ {F, B}) (affineSpan ℝ {Q, M}))
  (hKC_parallel_GJ : Parallel (affineSpan ℝ {K, C}) (affineSpan ℝ {G, J}))
  (h_angle_POM_val : ∠ P O M = degToRad 43)
  (h_B_not_on_line_PO : ¬Collinear ℝ ({B, P, O} : Set E))
  (h_SameSide_B_M : (affineSpan ℝ {P, O}).WSameSide B M)
  : ∠ B P O = degToRad 137 := by
  sorry
end ProblemFormalization

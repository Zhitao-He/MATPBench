import Mathlib.Geometry.Euclidean.Basic
import Mathlib.Geometry.Euclidean.Triangle
import Mathlib.Geometry.Euclidean.Angle.Unoriented.Basic
import Mathlib.Geometry.Euclidean.Projection

open EuclideanGeometry

namespace ExcircleBisectorTheorem

variable {P₂ : Type*} [EuclideanPlane P₂]

theorem al_bisects_angle_bac
    (A B C P Q D E F G M N L : P₂)
    (h_noncollinear_ABC : ¬ Collinear ℝ A B C)
    (hP_is_excenter_A : P = (Triangle.mk A B C).excenterNoncollinear h_noncollinear_ABC 0)
    (hQ_is_excenter_C : Q = (Triangle.mk A B C).excenterNoncollinear h_noncollinear_ABC 2)
    (hD_def : D = orthogonalProjection (Line.mk_pt_pt B C (by simp)) P)
    (hE_def : E = orthogonalProjection (Line.mk_pt_pt A C (by simp)) P)
    (hF_def : F = orthogonalProjection (Line.mk_pt_pt B C (by simp)) Q)
    (hG_def : G = orthogonalProjection (Line.mk_pt_pt A B (by simp)) Q)
    (hM_on_DE : M ∈ Line.mk_pt_pt D E (by simp))
    (hM_on_PQ : M ∈ Line.mk_pt_pt P Q (by simp))
    (hN_on_FG : N ∈ Line.mk_pt_pt F G (by simp))
    (hN_on_PQ : N ∈ Line.mk_pt_pt P Q (by simp))
    (hL_on_BN : L ∈ Line.mk_pt_pt B N (by simp))
    (hL_on_CM : L ∈ Line.mk_pt_pt C M (by simp)) :
    Angle.IsBisector (Line.mk_pt_pt A L (by simp)) B A C := by sorry

end ExcircleBisectorTheorem
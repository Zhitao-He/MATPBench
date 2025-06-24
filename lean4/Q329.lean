import Mathlib.Geometry.Euclidean.Basic
import Mathlib.Geometry.Euclidean.Angle.Unoriented.Affine
import Mathlib.Analysis.InnerProductSpace.PiL2
import Mathlib.LinearAlgebra.AffineSpace.Midpoint
import Mathlib.LinearAlgebra.AffineSpace.AffineSubspace.Basic
import Mathlib.Data.Real.Sqrt
import Mathlib.Data.Real.Pi.Bounds
import Mathlib.LinearAlgebra.Dimension.Finrank
open scoped EuclideanGeometry
open Affine AffineSubspace
abbrev EuclideanPlane := EuclideanSpace ℝ (Fin 2)
variable (A B C K O M S E : EuclideanPlane)
variable (l : AffineSubspace ℝ EuclideanPlane)
def oc_len_val : ℝ := 32
def cb_len_val : ℝ := 36
noncomputable def r_M_val : ℝ := cb_len_val / 2
noncomputable def ac_len_val : ℝ := cb_len_val + 2 * oc_len_val
noncomputable def r_K_val : ℝ := ac_len_val / 2
theorem area_KSEM_is_2040
    (h_ACB_collinear : Collinear ℝ ({A, C, B} : Set EuclideanPlane))
    (h_C_between_AB : C ∈ segment ℝ A B)
    (h_A_ne_C : A ≠ C) 
    (h_C_ne_B : C ≠ B) 
    (h_K_mid_AC : K = midpoint ℝ A C)
    (h_M_mid_CB : M = midpoint ℝ C B)
    (h_O_mid_AB : O = midpoint ℝ A B)
    (h_dist_OC : dist O C = oc_len_val)
    (h_dist_CB : dist C B = cb_len_val)
    (h_S_on_l : S ∈ l)
    (h_E_on_l : E ∈ l)
    (h_dist_KS : dist K S = r_K_val)
    (h_dist_ME : dist M E = r_M_val)
    (h_KS_perp_l : ∀ v ∈ l.direction, inner ℝ (S -ᵥ K) v = 0)
    (h_ME_perp_l : ∀ v ∈ l.direction, inner ℝ (E -ᵥ M) v = 0)
    (h_S_ne_E : S ≠ E)
    :
    (r_K_val + r_M_val) * (2 * Real.sqrt (r_K_val * r_M_val)) / 2 = 2040 := by
  sorry

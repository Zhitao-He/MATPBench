import Mathlib.Analysis.InnerProductSpace.PiL2 
import Mathlib.Geometry.Euclidean.Basic
import Mathlib.Geometry.Euclidean.Angle.Unoriented.Affine 
import Mathlib.Data.Real.Basic
open EuclideanGeometry Real 
namespace ProblemFormalization
abbrev P := EuclideanSpace ℝ (Fin 2) 
noncomputable def lengthAN : ℝ := 21 
noncomputable def lengthBN : ℝ := 18 
noncomputable def lengthBL : ℝ := 6   
noncomputable def lengthSC : ℝ := 4   
noncomputable def targetSumArea : ℝ := 99 
lemma points_distinct_of_dist_ne_zero {X Y : P} {d : ℝ} (h_dist : dist X Y = d) (hd_ne_zero : d ≠ 0) : X ≠ Y :=
  fun h_eq => hd_ne_zero (by rw [←h_dist, h_eq, dist_self])
theorem sum_area_SBN_NBA_eq_target
    (A B N S L C : P) 
    (h_dist_AN : dist A N = lengthAN)
    (h_dist_BN : dist B N = lengthBN)
    (h_L_on_line_AN : L ∈ affineSpan ℝ ({A, N} : Set P)) 
    (h_BL_perp_AN : EuclideanGeometry.angle B L A = (π / 2)) 
    (h_BL_length : dist B L = lengthBL)
    (h_C_on_line_BN : C ∈ affineSpan ℝ ({B, N} : Set P)) 
    (h_SC_perp_BN : EuclideanGeometry.angle S C B = (π / 2)) 
    (h_SC_length : dist S C = lengthSC)
    (h_A_ne_N : A ≠ N) 
    (h_B_ne_N : B ≠ N) 
    : (1/2 : ℝ) * (dist B N) * (dist S C) + (1/2 : ℝ) * (dist A N) * (dist B L) = targetSumArea := by 
  sorry
end ProblemFormalization

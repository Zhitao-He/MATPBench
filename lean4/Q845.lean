import Mathlib.Geometry.Euclidean.Basic
import Mathlib.Geometry.Euclidean.Angle.Unoriented.Affine
import Mathlib.Data.Real.Basic
import Mathlib.Analysis.SpecialFunctions.Trigonometric.Basic
import Mathlib.Analysis.InnerProductSpace.PiL2
open Real EuclideanGeometry
open scoped EuclideanGeometry
abbrev P := EuclideanSpace ℝ (Fin 2)
noncomputable def perimeterAGFE (A G F E : P) : ℝ :=
  dist A G + dist G F + dist F E + dist E A
theorem targetValue
  (A B C D E F G : P) (k : ℝ)
  (h_AB : dist A B = 26)
  (h_AD : dist A D = 12)
  (h_DG : dist D G = 9/2)
  (h_EF : dist E F = 8)
  (h_GF : dist G F = 14)
  (h_angleAGF : ∠ A G F = (108/180) * Real.pi)
  (h_G_between_AD : Sbtw ℝ A G D)
  (h_k_gt_zero : k > 0)
  (h_sim_AG_AD : dist A G = k * dist A D)
  (h_sim_GF_DC : dist G F = k * dist D C)
  (h_sim_FE_CB : dist F E = k * dist C B)
  (h_sim_EA_BA : dist E A = k * dist B A)
  : perimeterAGFE A G F E = 183/4 := by
  sorry

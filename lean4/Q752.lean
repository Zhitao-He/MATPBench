import Mathlib.Geometry.Euclidean.Basic
import Mathlib.Geometry.Euclidean.Triangle
import Mathlib.Geometry.Euclidean.Projection
import Mathlib.Data.Real.Basic
import Mathlib.Analysis.InnerProductSpace.PiL2
import Mathlib.Analysis.InnerProductSpace.Projection
open EuclideanGeometry
abbrev P := EuclideanSpace ℝ (Fin 2)
theorem sum_of_areas_eq_999_div_2
  (F G H I A B : P)
  (h_AI_length : dist I A = 18)
  (h_FH_length : dist F H = 37)
  (h_GB_length : dist G B = 9)
  (h_A_is_foot_of_I_on_FH : A = orthogonalProjection (affineSpan ℝ ({F, H} : Set P)) I)
  (h_B_is_foot_of_G_on_FH : B = orthogonalProjection (affineSpan ℝ ({F, H} : Set P)) G)
  (h_F_ne_H : F ≠ H)
  : (1/2 : ℝ) * dist F H * dist I (orthogonalProjection (affineSpan ℝ ({F, H} : Set P)) I)
    + (1/2 : ℝ) * dist F H * dist G (orthogonalProjection (affineSpan ℝ ({F, H} : Set P)) G)
    = (999 : ℝ) / 2 :=
by
  sorry

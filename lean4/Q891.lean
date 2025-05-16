import Mathlib.Data.Real.Basic
import Mathlib.Geometry.Euclidean.Basic
import Mathlib.Geometry.Euclidean.Triangle
import Mathlib.Analysis.InnerProductSpace.Basic

-- 2D point in Euclidean space
abbrev Point2D := EuclideanSpace ℝ (Fin 2)

-- The problem formalization
theorem sum_of_triangle_areas_eq_99
    (A B N S L C : Point2D)
    (hAN : dist A N = 21)
    (hBN : dist B N = 18)
    (h_collinear_ALB : Collinear ℝ ({A, L, B} : Set Point2D))
    (h_orthogonal_ALB : inner (A -ᵥ L) (B -ᵥ L) = 0)
    (hBL_len : dist B L = 6)
    (h_collinear_SCN : Collinear ℝ ({S, C, N} : Set Point2D))
    (h_orthogonal_SCN : inner (S -ᵥ C) (N -ᵥ C) = 0)
    (hSC_len : dist S C = 4) :
    Triangle.area (Triangle.mk S B N) + Triangle.area (Triangle.mk N B A) = 99 := by
  sorry
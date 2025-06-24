import Mathlib.Geometry.Euclidean.Basic
import Mathlib.Data.Real.Basic
import Mathlib.Analysis.InnerProductSpace.PiL2
open scoped EuclideanGeometry
abbrev P := EuclideanSpace ℝ (Fin 2)
theorem value_of_x
  (A B C : P)
  (x : ℝ)
  (h_AB : dist A B = 4/7)
  (h_AC : dist A C = x)
  (h_BC : dist B C = 5/7)
  (h_angle : inner ℝ (B -ᵥ A) (C -ᵥ A) = 0)
  : x = 3/7 := by
  sorry

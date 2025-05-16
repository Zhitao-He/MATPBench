import Mathlib.Data.Int.Basic


theorem triangular_bipyramid_vertex_sum (v3 v4 v5 : ℤ) :
  (1 + v3 + v4 = v3 + v4 + v5 + 6) →
  (1 + v3 + v5 = v3 + v4 + v5 + 6) →
  (1 + v4 + v5 = v3 + v4 + v5 + 6) →
  (5 + v3 + v4 = v3 + v4 + v5 + 6) →
  (5 + v3 + v5 = v3 + v4 + v5 + 6) →
  (5 + v4 + v5 = v3 + v4 + v5 + 6) →
  v3 + v4 + v5 = 11 :=
by sorry
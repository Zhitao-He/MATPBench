import Mathlib.Analysis.InnerProductSpace.PiL2
import Mathlib.Data.Real.Basic
import Mathlib.Geometry.Euclidean.Angle.Unoriented.Affine
import Mathlib.Geometry.Euclidean.Basic
abbrev P := EuclideanSpace ℝ (Fin 2)
theorem length_UB_eq_36
  (R S T A U V W B : P)
  (x : ℝ) (hx : x > 2)
  (hRA : dist R A = 3)
  (hTA : dist T A = 8)
  (hUB : dist U B = x + 2)
  (hWB : dist W B = 3 * x - 6)
  (hA_mid : A = midpoint ℝ R S)
  (hB_mid : B = midpoint ℝ U V)
  (h_sim : sorry)
  : dist U B = 36 := by
  sorry

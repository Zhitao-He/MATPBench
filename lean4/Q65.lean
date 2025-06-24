import Mathlib.Analysis.InnerProductSpace.PiL2
import Mathlib.Data.Real.Sqrt
import Mathlib.Analysis.SpecialFunctions.Trigonometric.Basic
abbrev P := EuclideanSpace ℝ (Fin 2)
noncomputable def areaOfTriangle (p1 p2 p3 : P) : ℝ :=
  (1 / 2 : ℝ) * abs ((p2 -ᵥ p1) 0 * (p3 -ᵥ p1) 1 - (p2 -ᵥ p1) 1 * (p3 -ᵥ p1) 0)
noncomputable def GridPoint (V₀ u v : P) (k l : Nat) : P := V₀ + (k : ℝ) • u + (l : ℝ) • v
def N_divisions : Nat := 6
def area_small_triangle_val : ℝ := 10
section
theorem result
  (V₀ u v : P)
  (h_norm : norm u = norm v)
  (h_inner : inner ℝ u v = (1/2) * norm u * norm v)
  (h_area : (norm u)^2 * Real.sqrt 3 / 4 = area_small_triangle_val)
  : areaOfTriangle (GridPoint V₀ u v 0 0) (GridPoint V₀ u v 3 1) (GridPoint V₀ u v 1 4) = 110 := by sorry
theorem small_triangle_side_len_sq_eq_value
  (u : P)
  : (norm u)^2 = (4 * area_small_triangle_val / Real.sqrt 3) := by sorry
end

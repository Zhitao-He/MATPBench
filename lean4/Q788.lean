import Mathlib.Analysis.InnerProductSpace.PiL2
import Mathlib.Data.Real.Basic
import Mathlib.Analysis.SpecialFunctions.Sqrt
import Mathlib.Data.Finset.Basic
abbrev P := EuclideanSpace ℝ (Fin 2)
noncomputable def triangleArea (A B C : P) : ℝ :=
  (1 / 2 : ℝ) * abs ((B -ᵥ A) 0 * (C -ᵥ A) 1 - (B -ᵥ A) 1 * (C -ᵥ A) 0)
noncomputable def circleArea (r : ℝ) : ℝ := Real.pi * r ^ 2
theorem area_difference
  (D C B N : P)
  (h_eq1 : dist D C = dist C B)
  (h_eq2 : dist C B = dist B D)
  (h_centroid : N = Finset.centroid ℝ {D, C, B} id)
  (h_inradius : let s := (dist D C + dist C B + dist B D) / 2;
                let area := triangleArea D C B;
                area / s = 3)
  : triangleArea D C B - circleArea 3 = 27 * Real.sqrt 3 - 9 * Real.pi := by
  sorry

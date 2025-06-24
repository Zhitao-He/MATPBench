import Mathlib.Data.Real.Basic
import Mathlib.Geometry.Euclidean.Basic
import Mathlib.Geometry.Euclidean.Triangle
import Mathlib.Analysis.InnerProductSpace.PiL2 
namespace Problem
abbrev P := EuclideanSpace ℝ (Fin 2)
variable (A B C O : P)
variable (h_AB : dist A B = 5)
variable (h_AC : dist A C = 5)
variable (h_BC : dist B C = 6)
variable (h_O_is_circumcenter : dist O A = dist O B ∧ dist O B = dist O C) 
noncomputable def triangleArea (p1 p2 p3 : P) : ℝ :=
  (1/2 : ℝ) * abs (((p2 -ᵥ p1) (Fin.mk 0 (by norm_num : 0 < 2)) * (p3 -ᵥ p1) (Fin.mk 1 (by norm_num : 1 < 2))) - (((p2 -ᵥ p1) (Fin.mk 1 (by norm_num : 1 < 2)) * (p3 -ᵥ p1) (Fin.mk 0 (by norm_num : 0 < 2)))))
theorem area_OBC_eq_target : triangleArea O B C = 21 / 8 := by
  sorry
end Problem

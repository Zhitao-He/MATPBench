import Mathlib.Analysis.InnerProductSpace.PiL2
import Mathlib.Geometry.Euclidean.Basic
import Mathlib.Geometry.Euclidean.Triangle
import Mathlib.Data.Real.Basic
abbrev P := EuclideanSpace ℝ (Fin 2)
section
variable (A B C D : P)
variable (hAB : dist A B = 26)
variable (hAD : dist A D = 10)
variable (hCB : dist C B = 16)
variable (hDC : dist D C = 8)
theorem area_ACB_eq_80 :
  (1 / 2 : ℝ) * dist C B * dist A D = 80 := by sorry
end

import Mathlib.Data.Real.Basic
import Mathlib.Data.Fin.VecNotation
open Real
noncomputable section
abbrev Point := Fin 2 → ℝ
def A : Point := ![4, 9]
def B : Point := ![0, 0]
def C : Point := ![12, 0]
noncomputable def triangle_area (A B C : Point) : ℝ :=
  (1 / 2 : ℝ) * abs ((A 0 - B 0) * (C 1 - B 1) - (C 0 - B 0) * (A 1 - B 1))
theorem triangle_area_is_54 :
    triangle_area A B C = (54 : ℝ) :=
  by sorry
end

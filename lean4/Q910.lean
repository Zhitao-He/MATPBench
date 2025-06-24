import Mathlib.Analysis.InnerProductSpace.PiL2
import Mathlib.Geometry.Euclidean.Angle.Unoriented.Affine
import Mathlib.Data.Real.Basic
abbrev P := EuclideanSpace ℝ (Fin 2)
section
variable (A B C Y : P)
noncomputable def diameterA : ℝ := 10
noncomputable def diameterB : ℝ := 20
noncomputable def diameterC : ℝ := 14
noncomputable def rA : ℝ := diameterA / 2
noncomputable def rB : ℝ := diameterB / 2
noncomputable def rC : ℝ := diameterC / 2
variable (h_C_on_circleB : dist B C = rB)
variable (h_Y_on_circleC : dist C Y = rC)
variable (h_Y_between_B_C : Wbtw ℝ B Y C)
theorem prove_length_BY_eq_3
  (A B C Y : P)
  (h_C_on_circleB : dist B C = (diameterB / 2))
  (h_Y_on_circleC : dist C Y = (diameterC / 2))
  (h_Y_between_B_C : Wbtw ℝ B Y C) :
  dist B Y = 3 := by sorry
end

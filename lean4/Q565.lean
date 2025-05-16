import Mathlib.Geometry.Euclidean.Basic
import Mathlib.Geometry.Euclidean.Angle.Unoriented.Basic
import Mathlib.Data.Real.Basic

noncomputable section

open EuclideanGeometry

abbrev P := EuclideanPlane ℝ

variable {B C D : P}
variable (y x_deg : ℝ)

axiom h_BC_len : dist C B = y
axiom h_BD_len : dist B D = 12
axiom h_CD_len : dist C D = 12

axiom h_angle_CBD_is_x_deg : ∠ C B D = Real.Angle.degree x_deg
axiom h_angle_BDC_is_right : ∠ B D C = Real.Angle.pi_div_two

axiom h_noncollinear : ¬ Collinear ℝ ({B, C, D} : Set P)

axiom h_x_deg_pos : x_deg > 0
axiom h_x_deg_lt_180 : x_deg < 180

theorem find_value_of_x : x_deg = 45 := by sorry

end
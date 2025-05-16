import Mathlib.Geometry.Euclidean.Basic
import Mathlib.Geometry.Euclidean.Angle.Unoriented.Basic
import Mathlib.Analysis.SpecialFunctions.Trigonometric.Basic
import Mathlib.Data.Real.Basic

variable (P : Type*) [EuclideanPlane P]

variable {P}
variables (A B C D E : P)

axiom h_triangle : ¬ Collinear ℝ A B C

axiom h_D_on_AB : D ∈ line[ℝ, A, B]
axiom h_CD_perp_AB : ∠ C D A = Real.pi / 2

axiom h_E_on_AC : E ∈ line[ℝ, A, C]
axiom h_BE_perp_AC : ∠ B E A = Real.pi / 2

axiom h_CE : dist C E = 25

axiom h_angle_BAC : ∠ B A C = 61 * Real.pi / 180
axiom h_angle_ABC : ∠ A B C = 73 * Real.pi / 180

def angle_ACB (h_triangle : ¬ Collinear ℝ A B C) : ℝ := 
  Real.pi - h_angle_BAC A B C - h_angle_ABC A B C

theorem length_BD_is_63 : dist B D = 63 := by sorry
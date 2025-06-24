import Mathlib.Geometry.Euclidean.Basic
import Mathlib.Geometry.Euclidean.Triangle
import Mathlib.Data.Real.Basic
namespace HexagonAreaProblem
abbrev Point := EuclideanSpace ℝ (Fin 2)
variable (A B C : Point)
noncomputable def p_point (A B : Point) : Point := A +ᵥ (A -ᵥ B)
noncomputable def s_point (A B : Point) : Point := B +ᵥ (B -ᵥ A)
noncomputable def q_point (A C : Point) : Point := A +ᵥ (A -ᵥ C)
noncomputable def t_point (A C : Point) : Point := C +ᵥ (C -ᵥ A)
noncomputable def r_point (B C : Point) : Point := B +ᵥ (B -ᵥ C)
noncomputable def u_point (B C : Point) : Point := C +ᵥ (C -ᵥ B)
noncomputable def triangleArea (A B C : Point) : ℝ := sorry
noncomputable def triangle_ABC_area_val : ℝ := triangleArea A B C
axiom h_area_ABC : triangle_ABC_area_val A B C = 12
noncomputable def signedArea (A B C : Point) : ℝ := sorry
noncomputable def hexagon_PQRSTU_signed_area_calc (A B C : Point) (origin : Point) : ℝ :=
  signedArea origin (p_point A B) (q_point A C) +
  signedArea origin (q_point A C) (r_point B C) +
  signedArea origin (r_point B C) (s_point A B) +
  signedArea origin (s_point A B) (t_point A C) +
  signedArea origin (t_point A C) (u_point B C) +
  signedArea origin (u_point B C) (p_point A B)
noncomputable def hexagon_PQRSTU_area_val (A B C : Point) : ℝ := abs (hexagon_PQRSTU_signed_area_calc A B C A)
def target_hexagon_area_value : ℝ := 156
theorem hexagon_area_is_target_value : hexagon_PQRSTU_area_val A B C = target_hexagon_area_value := by
  sorry
end HexagonAreaProblem

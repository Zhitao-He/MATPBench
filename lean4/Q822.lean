import Mathlib.Analysis.InnerProductSpace.PiL2
import Mathlib.Data.Real.Basic
abbrev P := EuclideanSpace ℝ (Fin 2)
namespace EuclideanGeometryProblem
noncomputable def perimeterOfTriangle (A B C : P) : ℝ :=
  dist A B + dist B C + dist C A
theorem perimeter_ABC_is_36 (
  A B C D E F G : P) (x y z : ℝ)
  (h_len_AF : dist A F = 10 * z - 40)
  (h_len_CF : dist C F = 18 - 6 * x)
  (h_len_DA : dist D A = 2 * z)
  (h_len_DB : dist D B = 12 * y - 4)
  (h_len_EB : dist E B = 4 * y)
  (h_len_EC : dist E C = 3 * x)
  (h_tangent_A : dist D A = dist A F)
  (h_tangent_B : dist D B = dist B E)
  (h_tangent_C : dist E C = dist C F)
  (h_D_on_AB : dist A B = dist A D + dist D B)
  (h_E_on_BC : dist B C = dist B E + dist E C)
  (h_F_on_AC : dist A C = dist A F + dist F C)
  : perimeterOfTriangle A B C = 36 := by sorry
end EuclideanGeometryProblem

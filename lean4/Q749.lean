import Mathlib.Geometry.Euclidean.Basic
import Mathlib.Geometry.Euclidean.Angle.Unoriented.Affine
import Mathlib.Analysis.SpecialFunctions.Trigonometric.Basic
import Mathlib.Data.Real.Basic
import Mathlib.Analysis.InnerProductSpace.PiL2
open Real EuclideanGeometry
open scoped EuclideanGeometry
abbrev Pt := EuclideanSpace ℝ (Fin 2)
theorem prove_EC_length
  (A B C D E F G : Pt) (x : ℝ)
  (h_BA : dist B A = 3)
  (h_BD : dist B D = x - 1)
  (h_CE : dist C E = x + 2)
  (h_EF : dist E F = 8)
  (h_angle_eq : ∠ G A B = ∠ E F G)
  (h_AB_perp_CB : ∠ A B C = Real.pi / 2)
  (h_DE_perp_FE : ∠ D E F = Real.pi / 2)
  (h_collinear_BCDE : Collinear ℝ ({B, C, D, E} : Set Pt))
  (h_B_C_D : Wbtw ℝ B C D)
  (h_C_D_E : Wbtw ℝ C D E)
  (h_A_G_F : Wbtw ℝ A G F)
  (h_C_G_D : Wbtw ℝ C G D)
  (h_x_gt_1 : x > 1)
  (h_A_ne_G : A ≠ G)
  (h_F_ne_G : F ≠ G)
  (h_B_ne_C : B ≠ C)
  (h_D_ne_E : D ≠ E)
  : dist E C = 24/5 := by
  sorry

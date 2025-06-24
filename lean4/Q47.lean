import Mathlib.Geometry.Euclidean.Basic
import Mathlib.Geometry.Euclidean.Triangle
import Mathlib.Geometry.Euclidean.Angle.Unoriented.Basic
import Mathlib.Geometry.Euclidean.Angle.Oriented.Affine
import Mathlib.Data.Real.Basic
import Mathlib.Data.Real.Pi.Bounds
import Mathlib.Analysis.InnerProductSpace.PiL2
import Mathlib.Geometry.Euclidean.Angle.Unoriented.Affine
open Real EuclideanGeometry
abbrev P := EuclideanSpace ℝ (Fin 2)
noncomputable def degrees_to_radians (d : ℝ) : ℝ := d * (Real.pi / 180)
theorem target_angle_E_is_26_degrees
  (A B C D E F G D_aux : P)
  (h_A_ne_B : A ≠ B) (h_A_ne_C : A ≠ C) (h_B_ne_C : B ≠ C)
  (h_ABC_not_collinear : ¬ Collinear ℝ ({A, B, C} : Set P))
  (h_D_ne_E : D ≠ E) (h_D_ne_F : D ≠ F) (h_E_ne_F : E ≠ F)
  (h_DEF_not_collinear : ¬ Collinear ℝ ({D, E, F} : Set P))
  (h_tri_congr : ∃ φ : AffineIsometryEquiv ℝ P P, φ A = D ∧ φ B = E ∧ φ C = F)
  (h_C_ne_D_aux : C ≠ D_aux)
  (h_angle_BCD_aux_eq_ACD_aux : ∠ B C D_aux = ∠ A C D_aux)
  (h_angle_BCA_sum_parts : ∠ B C A = ∠ B C D_aux + ∠ A C D_aux)
  (h_G_on_CD_aux : Collinear ℝ ({C, D_aux, G} : Set P))
  (h_G_on_EF : Collinear ℝ ({E, F, G} : Set P))
  (h_G_ne_C : G ≠ C) (h_G_ne_F : G ≠ F)
  (h_angle_A_val : ∠ B A C = degrees_to_radians 22)
  (h_angle_CGF_val : ∠ C G F = degrees_to_radians 88)
  : ∠ D E F = degrees_to_radians 26 := by
  sorry

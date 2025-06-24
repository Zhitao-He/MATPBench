import Mathlib.Data.Real.Basic
import Mathlib.Analysis.InnerProductSpace.PiL2 
import Mathlib.Geometry.Euclidean.Angle.Unoriented.Affine 
abbrev PPoint := EuclideanSpace ℝ (Fin 2) 
structure IsKite (B A D C : PPoint) : Prop where
  BA_eq_BC : dist B A = dist B C
  DA_eq_DC : dist D A = dist D C
theorem length_AB_is_5 (A B C D E : PPoint)
  (hAE_length : dist A E = 4)
  (hBE_length : dist B E = 3)
  (h_BADC_is_kite : IsKite B A D C)
  (hE_on_AC : E ∈ segment ℝ A C)
  (hE_on_BD : E ∈ segment ℝ B D)
  (hA_ne_C : A ≠ C)
  (hB_ne_D : B ≠ D)
  (h_kite_diagonals_perp : EuclideanGeometry.angle A E B = Real.pi / 2) 
  : dist A B = 5 := by
  sorry
lemma kite_diagonals_perpendicular_proof
    (k_B k_A k_D k_C k_E : PPoint)
    (h_kite : IsKite k_B k_A k_D k_C)
    (hE_AC : k_E ∈ segment ℝ k_A k_C)
    (hE_BD : k_E ∈ segment ℝ k_B k_D)
    (hA_ne_C' : k_A ≠ k_C)
    (hB_ne_D' : k_B ≠ k_D)
    : EuclideanGeometry.angle k_A k_E k_B = Real.pi / 2 := by
  sorry

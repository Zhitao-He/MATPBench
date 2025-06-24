import Mathlib.Analysis.InnerProductSpace.PiL2
import Mathlib.Geometry.Euclidean.Triangle
import Mathlib.Geometry.Euclidean.Basic
import Mathlib.Geometry.Euclidean.Angle.Unoriented.Affine
import Mathlib.Data.Real.Basic
open EuclideanGeometry
open scoped Matrix
abbrev P := EuclideanSpace ℝ (Fin 2)
theorem area_ABC_is_315
  (A B C P_int D E F : P)
  (areaAPF areaBPF areaBPD areaCPD areaCPE areaAPE : ℝ)
  (hABC_nondegenerate : ¬ Collinear ℝ ({A, B, C} : Set P))
  (hD_on_BC : Sbtw ℝ B D C)
  (hE_on_AC : Sbtw ℝ A E C)
  (hF_on_AB : Sbtw ℝ A F B)
  (hA_Pint_D_collinear : Collinear ℝ ({A, P_int, D} : Set P))
  (hPint_between_A_D : Sbtw ℝ A P_int D)
  (hB_Pint_E_collinear : Collinear ℝ ({B, P_int, E} : Set P))
  (hPint_between_B_E : Sbtw ℝ B P_int E)
  (hC_Pint_F_collinear : Collinear ℝ ({C, P_int, F} : Set P))
  (hPint_between_C_F : Sbtw ℝ C P_int F)
  (h_areaAPF_eq : abs ((1/2 : ℝ) * abs ((P_int -ᵥ A) 0 * (F -ᵥ A) 1 - (P_int -ᵥ A) 1 * (F -ᵥ A) 0)) = areaAPF)
  (h_areaBPF_eq : abs ((1/2 : ℝ) * abs ((P_int -ᵥ B) 0 * (F -ᵥ B) 1 - (P_int -ᵥ B) 1 * (F -ᵥ B) 0)) = areaBPF)
  (h_areaBPD_eq : abs ((1/2 : ℝ) * abs ((P_int -ᵥ B) 0 * (D -ᵥ B) 1 - (P_int -ᵥ B) 1 * (D -ᵥ B) 0)) = areaBPD)
  (h_areaCPD_eq : abs ((1/2 : ℝ) * abs ((P_int -ᵥ C) 0 * (D -ᵥ C) 1 - (P_int -ᵥ C) 1 * (D -ᵥ C) 0)) = areaCPD)
  (h_areaCPE_eq : abs ((1/2 : ℝ) * abs ((P_int -ᵥ C) 0 * (E -ᵥ C) 1 - (P_int -ᵥ C) 1 * (E -ᵥ C) 0)) = areaCPE)
  (h_areaAPE_eq : abs ((1/2 : ℝ) * abs ((P_int -ᵥ A) 0 * (E -ᵥ A) 1 - (P_int -ᵥ A) 1 * (E -ᵥ A) 0)) = areaAPE)
  (h_areaAPF_pos : areaAPF > 0)
  (h_areaBPF_pos : areaBPF > 0)
  (h_areaBPD_pos : areaBPD > 0)
  (h_areaCPD_pos : areaCPD > 0)
  (h_areaCPE_pos : areaCPE > 0)
  (h_areaAPE_pos : areaAPE > 0)
  (h_areaAPE_val : areaAPE = 40)
  (h_areaCPE_val : areaCPE = 84)
  (h_areaBPD_val : areaBPD = 30)
  (h_areaBPF_val : areaBPF = 35)
  (h_cevas_area_theorem : areaAPF * areaBPD * areaCPE = areaBPF * areaCPD * areaAPE)
  (h_total_area_sum : abs ((1/2 : ℝ) * abs ((B -ᵥ A) 0 * (C -ᵥ A) 1 - (B -ᵥ A) 1 * (C -ᵥ A) 0)) =
    areaAPF + areaBPF + areaBPD + areaCPD + areaCPE + areaAPE)
  : abs ((1/2 : ℝ) * abs ((B -ᵥ A) 0 * (C -ᵥ A) 1 - (B -ᵥ A) 1 * (C -ᵥ A) 0)) = 315 := by sorry

theory MediansIntersection
imports Main HOL.Real HOL.Euclidean_Space
begin
type_synonym point = "real × real"
locale triangle_with_medians =
  fixes A B C :: point
  assumes non_collinear: "det_3 1 (fst A) (snd A) 1 (fst B) (snd B) 1 (fst C) (snd C) ≠ 0"
  defines "D ≡ ((fst B + fst C)/2, (snd B + snd C)/2)"  
  defines "E ≡ ((fst A + fst B)/2, (snd A + snd B)/2)"  
  defines "median_AD ≡ {p. ∃t. 0 ≤ t ∧ t ≤ 1 ∧ p = (1-t) ⊗ A ⊕ t ⊗ D}"
  defines "median_CE ≡ {p. ∃t. 0 ≤ t ∧ t ≤ 1 ∧ p = (1-t) ⊗ C ⊕ t ⊗ E}"
  fixes P :: point
  assumes P_on_AD: "P ∈ median_AD"
  assumes P_on_CE: "P ∈ median_CE"
  assumes PE_length: "dist P E = 1.5"
  assumes PD_length: "dist P D = 2"
  assumes DE_length: "dist D E = 2.5"
  defines "⊕ p q ≡ (fst p + fst q, snd p + snd q)"  
  defines "⊗ s p ≡ (s * fst p, s * snd p)"         
  defines "dist p q ≡ sqrt((fst p - fst q)² + (snd p - snd q)²)"  
  defines "area_quad A E D C ≡ abs(det_3 1 (fst A) (snd A) 1 (fst E) (snd E) 0 0 0) / 2 +
                              abs(det_3 1 (fst E) (snd E) 1 (fst D) (snd D) 0 0 0) / 2 +
                              abs(det_3 1 (fst D) (snd D) 1 (fst C) (snd C) 0 0 0) / 2 +
                              abs(det_3 1 (fst C) (snd C) 1 (fst A) (snd A) 0 0 0) / 2"
theorem area_AEDC_is_13_5:
  assumes "triangle_with_medians A B C P"
  shows "area_quad A E D C = 13.5"
  sorry  
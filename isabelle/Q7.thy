theory DerivativeEquality
  imports Complex_Main "HOL-Analysis.Analysis"
begin

definition f :: "real ⇒ real" where
  "f x = |2*x - 3| + 1"

lemma f_has_derivative_at_2:
  "(f has_derivative f') (at 2)"
  if "f' = (λh. 2 * sgn(2*2-3) * h)"
proof -
  have "2*2-3 = 1" by simp
  hence "sgn(2*2-3) = 1" by simp
  
  have "(λx. |2*x - 3|) has_derivative (λh. 2 * sgn(2*2-3) * h) (at 2)"
    by (rule derivative_eq_intros refl has_derivative_abs)+
  moreover have "(λx. 1) has_derivative (λh. 0) (at 2)"
    by (rule derivative_eq_intros refl has_derivative_const)+
  ultimately have "(λx. |2*x - 3| + 1) has_derivative (λh. 2 * sgn(2*2-3) * h + 0) (at 2)"
    by (rule derivative_eq_intros refl has_derivative_add)+
  
  with ‹sgn(2*2-3) = 1› that show ?thesis
    by simp
qed

lemma f_has_derivative_at_5:
  "(f has_derivative f') (at 5)"
  if "f' = (λh. 2 * sgn(2*5-3) * h)"
proof -
  have "2*5-3 = 7" by simp
  hence "sgn(2*5-3) = 1" by simp
  
  have "(λx. |2*x - 3|) has_derivative (λh. 2 * sgn(2*5-3) * h) (at 5)"
    by (rule derivative_eq_intros refl has_derivative_abs)+
  moreover have "(λx. 1) has_derivative (λh. 0) (at 5)"
    by (rule derivative_eq_intros refl has_derivative_const)+
  ultimately have "(λx. |2*x - 3| + 1) has_derivative (λh. 2 * sgn(2*5-3) * h + 0) (at 5)"
    by (rule derivative_eq_intros refl has_derivative_add)+
  
  with ‹sgn(2*5-3) = 1› that show ?thesis
    by simp
qed

theorem derivative_equal_at_2_and_5:
  "DERIV f 2 :> D2 ⟹ DERIV f 5 :> D5 ⟹ D2 = D5"
proof -
  assume "DERIV f 2 :> D2" "DERIV f 5 :> D5"
  
  have deriv2: "DERIV f 2 :> (λh. 2*h)"
  proof -
    have "(f has_derivative (λh. 2*h)) (at 2)"
      using f_has_derivative_at_2[of "λh. 2*h"]
      by (simp add: sgn_pos_iff)
    thus ?thesis
      by (simp add: DERIV_def)
  qed
  
  have deriv5: "DERIV f 5 :> (λh. 2*h)"
  proof -
    have "(f has_derivative (λh. 2*h)) (at 5)"
      using f_has_derivative_at_5[of "λh. 2*h"]
      by (simp add: sgn_pos_iff)
    thus ?thesis
      by (simp add: DERIV_def)
  qed
  
  from deriv2 ‹DERIV f 2 :> D2› have "D2 = (λh. 2*h)"
    by (rule DERIV_unique)
  moreover from deriv5 ‹DERIV f 5 :> D5› have "D5 = (λh. 2*h)"
    by (rule DERIV_unique)
  ultimately show "D2 = D5"
    by simp
qed

end
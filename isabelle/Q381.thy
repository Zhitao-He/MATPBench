theory TriangleMidline
imports 
  Main
  "HOL-Analysis.Euclidean_Space"
begin
type_synonym point = "real^2"
definition dist :: "point ⇒ point ⇒ real" where
  "dist p q = norm (p - q)"
definition between :: "point ⇒ point ⇒ point ⇒ bool" where
  "between A B C ⟷ (∃t. 0 ≤ t ∧ t ≤ 1 ∧ B = A + t *⇩R (C - A))"
definition is_midpoint :: "point ⇒ point ⇒ point ⇒ bool" where
  "is_midpoint M A B ⟷ between A M B ∧ dist A M = dist M B"
theorem triangle_midline_length:
  fixes A B C D E :: point
  assumes "is_midpoint D A B"      
  assumes "is_midpoint E A C"      
  assumes "dist B C = 6"           
  shows "dist D E = 3"             
begin
  have D_eq: "D = (A + B) /\<^sub>R 2"
    using assms(1) is_midpoint_def between_def
    by (metis add.commute diff_add_cancel dist_norm eq_iff_diff_eq_0 mult_2 
        real_vector.scale_right_distrib real_vector.scale_zero_right 
        scaleR_half_double vector_add_divide)
  have E_eq: "E = (A + C) /\<^sub>R 2"
    using assms(2) is_midpoint_def between_def
    by (metis add.commute diff_add_cancel dist_norm eq_iff_diff_eq_0 mult_2 
        real_vector.scale_right_distrib real_vector.scale_zero_right 
        scaleR_half_double vector_add_divide)
  have "D - E = (A + B) /\<^sub>R 2 - (A + C) /\<^sub>R 2"
    by (simp add: D_eq E_eq)
  also have "... = (B - C) /\<^sub>R 2"
    by (simp add: algebra_simps scaleR_diff_right)
  finally have DE_eq: "D - E = (B - C) /\<^sub>R 2" .
  have "dist D E = norm (D - E)"
    by (simp add: dist_def)
  also have "... = norm ((B - C) /\<^sub>R 2)"
    by (simp add: DE_eq)
  also have "... = norm (B - C) / 2"
    by (simp add: norm_scaleR)
  also have "... = dist B C / 2"
    by (simp add: dist_def)
  also have "... = 6 / 2"
    by (simp add: assms(3))
  also have "... = 3"
    by simp
  finally show "dist D E = 3" .
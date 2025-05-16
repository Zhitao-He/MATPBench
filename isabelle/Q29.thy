theory Triangle
  imports Main HOL.Real
begin

theorem triangle_side_length_z:
  fixes z::real
  assumes "7 > 0" and "9 > 0" and "2 * z - 15 > 0"
    and "7 + 9 > 2 * z - 15"
    and "7 + (2 * z - 15) > 9"
    and "9 + (2 * z - 15) > 7"
  shows "z = 12"
begin
  have "2 * z - 15 = 9"
  proof -
    from assms(5) have "7 + (2 * z - 15) > 9" by simp
    hence "2 * z - 15 > 9 - 7" by simp
    hence "2 * z - 15 > 2" by simp
    
    from assms(6) have "9 + (2 * z - 15) > 7" by simp
    hence "2 * z - 15 > 7 - 9" by simp
    hence "2 * z - 15 > -2" by simp

    from assms(4) have "7 + 9 > 2 * z - 15" by simp
    hence "2 * z - 15 < 16" by simp
    
    from ‹2 * z - 15 > 2› have "2 * z > 17" by simp
    hence "z > 8.5" by simp

    from ‹2 * z - 15 < 16› have "2 * z < 31" by simp
    hence "z < 15.5" by simp

    from ‹z > 8.5› and ‹z < 15.5› have "z = 9 + 3" 
      by (metis add_diff_cancel_right' diff_add_cancel le_less_trans less_eq_real_def 
                less_irrefl less_trans_Suc numeral_3_eq_3 of_nat_Suc semiring_normalization_rules(29))
    hence "z = 12" by simp
    thus "2 * z - 15 = 9" by simp
  qed
  
  thus "z = 12" by simp
end

end
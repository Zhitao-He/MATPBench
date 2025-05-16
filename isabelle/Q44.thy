theory TreeHeight
imports
  Complex_Main
  "HOL-Analysis.Analysis"
begin
lemma tree_height_measurement:
  fixes a h :: real
  assumes "tan (pi/6) = h / (a - 0)"
      and "tan (pi/3) = h / (a - 10)"
      and "a > 10" 
  shows "h = 5 * sqrt 3"
proof -
  have "tan (pi/6) = h / a" using assms(1) by simp
  have "tan (pi/3) = h / (a - 10)" using assms(2) by simp
  have "tan (pi/6) = 1/sqrt 3" 
    by (simp add: tan_pi_6)
  have "tan (pi/3) = sqrt 3" 
    by (simp add: tan_pi_3)
  from `tan (pi/6) = h / a` and `tan (pi/6) = 1/sqrt 3` 
  have "h / a = 1/sqrt 3" by simp
  hence "h = a / sqrt 3" by (simp add: field_simps)
  from `tan (pi/3) = h / (a - 10)` and `tan (pi/3) = sqrt 3` 
  have "h / (a - 10) = sqrt 3" by simp
  hence "h = (a - 10) * sqrt 3" by (simp add: field_simps)
  from `h = a / sqrt 3` and `h = (a - 10) * sqrt 3`
  have "a / sqrt 3 = (a - 10) * sqrt 3" by simp
  hence "a = (a - 10) * 3" 
    by (simp add: real_sqrt_mult_self)
  hence "a = 3*a - 30" by simp
  hence "2*a = 30" by simp
  hence "a = 15" by simp
  with `h = (a - 10) * sqrt 3` 
  have "h = 5 * sqrt 3" by simp
  thus "h = 5 * sqrt 3" by simp
qed
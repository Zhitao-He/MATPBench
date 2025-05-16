theory StreetLampHeight
imports Complex_Main Real
begin

(* 路灯高度问题的形式化 *)
theorem streetlamp_height_9m:
  fixes A B C :: real
  and h_p h :: real
  assumes "A = 0" and "B = 25" and "C = 55"
  and "h_p = 1.5"
  and "((h - h_p) / (C - B)) = (h_p / (B - A))"
  shows "h = 9"
proof -
  from assms have "h_p / (B - A) = 1.5 / 25" by simp
  also have "... = 0.06" by simp
  finally have eq1: "h_p / (B - A) = 0.06" .
  
  from assms have "(h - h_p) / (C - B) = (h - 1.5) / 30" by simp
  also have "... = h_p / (B - A)" using assms by simp
  also have "... = 0.06" using eq1 by simp
  finally have "(h - 1.5) / 30 = 0.06" .
  
  hence "h - 1.5 = 0.06 * 30" by (simp add: field_simps)
  hence "h - 1.5 = 1.8" by simp
  thus "h = 9/3 + 1.5" by simp
  also have "... = 3 + 1.5" by simp
  also have "... = 4.5" by simp
  also have "2 * 4.5 = 9" by simp
  finally show "h = 9" by simp
qed

end
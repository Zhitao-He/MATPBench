theory Triangle_Problem
imports Main Complex_Main
begin
theorem triangle_problem:
  fixes A B C :: "complex"
  assumes "cmod (C - A) = 3"  
  have angle_sum: "angle (C - A) (B - A) + angle (A - B) (C - B) + angle (B - C) (A - C) = pi"
    by (simp add: triangle_angles)
  have "sin(angle (B - C) (A - C)) / cmod (A - B) = sin(angle (A - B) (C - B)) / cmod (C - A)"
    by (simp add: sine_theorem)
  have "angle (B - C) (A - C) = pi/2"
    using assms(4) by (simp add: inner_product_eq_zero_iff)
  hence "cmod (A - B) = cmod (C - A) * sin(angle (A - B) (C - B)) / sin(angle (B - C) (A - C))"
    by (simp add: sine_theorem)
  hence "cmod (A - B) = 3 * sin(pi/3) / sin(pi/2)"
    using assms(1) assms(3) `angle (B - C) (A - C) = pi/2` by simp
  hence "cmod (A - B) = 3 * (sqrt 3)/2 / 1"
    by (simp add: sin_60 sin_90)
  thus "cmod (A - B) = 2 * sqrt 3"
    by simp
theory TriangleTheorem
imports 
  Complex_Main
  "HOL-Analysis.Euclidean_Space"
begin
theorem triangle_side_x_value:
  fixes A B C :: "real × real"
    and x y :: real
  assumes "dist A C = 5"
    and "⟨A - C, B - C⟩ = 0"  (* AC⊥BC *)
    and "cos_angle (A - C) (A - B) = 1/2"  (* ∠BAC = 60° *)
    and "dist B C = x"
  shows "x = 5 * sqrt 3"
begin
  have "⟨A - C, A - C⟩ = 25"
    using assms(1) by (simp add: dist_euclidean_squared)
  have "cos_angle (A - C) (A - B) = ⟨A - C, A - B⟩ / (norm (A - C) * norm (A - B))"
    by (simp add: cos_angle_def)
  hence "⟨A - C, A - B⟩ = norm (A - C) * norm (A - B) / 2"
    using assms(3) by auto
  hence "⟨A - C, A - B⟩ = 5 * norm (A - B) / 2"
    using assms(1) by (simp add: dist_norm)
  have "⟨A - C, B - C⟩ = 0" 
    by (fact assms(2))
  have "A - B = (A - C) - (B - C)" 
    by simp
  hence "⟨A - C, A - B⟩ = ⟨A - C, A - C⟩ - ⟨A - C, B - C⟩"
    by (simp add: inner_diff_right)
  hence "⟨A - C, A - B⟩ = ⟨A - C, A - C⟩"
    using ⟨⟨A - C, B - C⟩ = 0⟩ by simp
  hence "⟨A - C, A - B⟩ = 25"
    using ⟨⟨A - C, A - C⟩ = 25⟩ by simp
  hence "5 * norm (A - B) / 2 = 25"
    using ⟨⟨A - C, A - B⟩ = 5 * norm (A - B) / 2⟩ by simp
  hence "norm (A - B) = 10"
    by simp
  have "B - C = (B - A) + (A - C)"
    by simp
  hence "⟨B - C, B - C⟩ = ⟨B - A, B - A⟩ + 2 * ⟨B - A, A - C⟩ + ⟨A - C, A - C⟩"
    by (simp add: inner_add_left inner_add_right)
  have "⟨B - A, A - C⟩ = -⟨A - B, A - C⟩" 
    by (simp add: inner_commute[of "A - B" "A - C"])
  hence "⟨B - A, A - C⟩ = -⟨A - C, A - B⟩"
    by (simp add: inner_commute)
  hence "⟨B - A, A - C⟩ = -25"
    using ⟨⟨A - C, A - B⟩ = 25⟩ by simp
  hence "⟨B - C, B - C⟩ = ⟨B - A, B - A⟩ + 2 * (-25) + 25"
    using ⟨⟨B - C, B - C⟩ = ⟨B - A, B - A⟩ + 2 * ⟨B - A, A - C⟩ + ⟨A - C, A - C⟩⟩
    and ⟨⟨A - C, A - C⟩ = 25⟩ by simp
  hence "⟨B - C, B - C⟩ = ⟨B - A, B - A⟩ - 50 + 25"
    by simp
  hence "⟨B - C, B - C⟩ = ⟨B - A, B - A⟩ - 25"
    by simp
  have "⟨B - A, B - A⟩ = ⟨-(A - B), -(A - B)⟩"
    by simp
  hence "⟨B - A, B - A⟩ = ⟨A - B, A - B⟩"
    by (simp add: inner_minus_minus)
  hence "⟨B - A, B - A⟩ = (norm (A - B))^2"
    by (simp add: power2_norm_eq_inner)
  hence "⟨B - A, B - A⟩ = 100"
    using ⟨norm (A - B) = 10⟩ by auto
  hence "⟨B - C, B - C⟩ = 100 - 25"
    using ⟨⟨B - C, B - C⟩ = ⟨B - A, B - A⟩ - 25⟩ by simp
  hence "⟨B - C, B - C⟩ = 75"
    by simp
  hence "x^2 = 75"
    using assms(4) by (simp add: dist_norm power2_norm_eq_inner)
  hence "x = sqrt 75"
    by (simp add: real_sqrt_pow2)
  thus "x = 5 * sqrt 3"
    by (simp add: real_sqrt_mult [symmetric])
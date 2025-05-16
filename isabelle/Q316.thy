theory RightSquarePyramid
imports Complex_Main
begin
theorem right_square_pyramid_lateral_height:
  fixes V :: real and h :: real
  assumes "V = 63960" "h = 30"
  shows "∃s l::real. s > 0 ∧ l > 0 ∧
                   V = (1/3) * s^2 * h ∧
                   l = sqrt((s/2)^2 + h^2) ∧
                   abs(l - 50) ≤ 0.5"
proof -
  have "V = (1/3) * s^2 * h" when "s = sqrt((3 * V) / h)" "s > 0" for s
    using assms(1-2) that
    by simp
  def s ≡ "sqrt((3 * V) / h)"
  have s_pos: "s > 0"
    unfolding s_def using assms
    by (simp add: divide_pos_pos)
  have V_eq: "V = (1/3) * s^2 * h"
    unfolding s_def using assms
    by (simp add: power2_eq_square algebra_simps)
  def l ≡ "sqrt((s/2)^2 + h^2)"
  have l_pos: "l > 0"
    unfolding l_def s_def using assms s_pos
    by simp
  have "s = sqrt(6396)" 
    unfolding s_def using assms
    by (simp add: algebra_simps)
  then have "s ≈ 80"
    by (approximation 6396 80)
  hence "l ≈ 50"
    unfolding l_def
    by (approximation 50 50)
  have "abs(l - 50) ≤ 0.5"
    unfolding l_def s_def using assms
    by (approximation 50 0.5)
  thus ?thesis
    using s_pos l_pos V_eq
    by blast
qed
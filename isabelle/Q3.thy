theory Pentagon_Angle
  imports Main Real
begin

theorem pentagon_angle_H:
  fixes x :: real
  defines "aEF ≡ x"
  defines "aFG ≡ x + 20"
  defines "aGH ≡ x + 5"
  defines "aHJ ≡ x - 5"
  defines "aJ ≡ x + 10"
  assumes "aEF + aFG + aGH + aHJ + aJ = 540"
  shows "aHJ = 97"
proof -
  have "5 * x + 30 = 540" using assms unfolding aEF_def aFG_def aGH_def aHJ_def aJ_def
    by simp
  hence "5 * x = 510" by simp
  hence "x = 102" by simp
  thus "aHJ = 97" unfolding aHJ_def by simp
qed

end
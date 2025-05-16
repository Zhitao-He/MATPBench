theory RectangleParabola
imports Complex_Main "HOL-Analysis.Analysis"
begin

theorem rectangle_area_parabola:
  fixes x :: real
  assumes "0 < x" and "x ≤ 6"
  shows "let y = 36 - x^2; A = 2 * x * y in A = 72 * x - 2 * x^3"
proof -
  let ?y = "36 - x^2"
  let ?A = "2 * x * ?y"
  have "?A = 2 * x * (36 - x^2)" by simp
  also have "... = 2 * x * 36 - 2 * x * x^2" by (simp add: algebra_simps)
  also have "... = 72 * x - 2 * x^3" by (simp add: power3_eq_cube)
  finally show ?thesis by simp
qed

end
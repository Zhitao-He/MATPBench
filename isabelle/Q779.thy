theory CirclePerimeter
imports Complex_Main Real_Vector_Spaces "HOL-Analysis.Analysis"
begin
definition circle_arc_length :: "real ⇒ real ⇒ real" where
  "circle_arc_length r angle = r * angle"
definition circle_perimeter :: "real ⇒ real" where
  "circle_perimeter r = 2 * pi * r"
lemma problem_setup:
  fixes S T R :: "'a::real_inner"
  assumes "S is_center_of_circle"
  and "arc_length SRT = 8"
  and "angle TSR = 70 * (pi/180)" 
  shows "circle_perimeter (norm (T - S)) = 288/7"
proof -
  have "norm (T - S) = norm (R - S)" using assms(1) 
    by (metis norm_eq_circle_points)
  define r where "r = norm (T - S)"
  have "arc_length SRT = r * angle TSR"
    using assms(3) arc_length_formula by auto
  then have "8 = r * (70 * (pi/180))" 
    using assms(2) by simp
  then have "r = 8 / (70 * (pi/180))"
    by (simp add: field_simps)
  then have "r = 8 * 180 / (70 * pi)"
    by (simp add: field_simps)
  then have "r = 144 / (7 * pi)"
    by (simp add: eval_nat_numeral)
  then have "circle_perimeter r = 2 * pi * (144 / (7 * pi))"
    by (simp add: circle_perimeter_def)
  then have "circle_perimeter r = 2 * 144 / 7"
    by (simp add: field_simps)
  then have "circle_perimeter r = 288 / 7"
    by simp
  then show ?thesis
    by (simp add: r_def)
qed
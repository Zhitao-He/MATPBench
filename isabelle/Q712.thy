theory AngleProblem
imports
  Main
  Complex_Main
  "HOL-Analysis.Analysis"
begin
locale triangle_problem =
  fixes S T R :: "real × real"  
  assumes non_collinear: "¬collinear {S, T, R}"
    and eq_TR_ST: "dist T R = dist S T"  
    and angle_STR: "angle S T R = 50 * (pi/180)"  
lemma triangle_angle_sum:
  "angle S T R + angle T R S + angle R S T = pi"
  using non_collinear
  by (simp add: triangle_angles_sum)
lemma isosceles_equal_angles:
  assumes "dist a b = dist a c"
  shows "angle b a c = angle c a b"
  by (simp add: assms angle_equality)
theorem angle_TRS_value:
  "angle T R S = 65 * (pi/180)"
proof -
  have "angle T S R = angle R S T"
    using eq_TR_ST by (simp add: isosceles_equal_angles)
  have "angle T R S + angle R S T + angle S T R = pi"
    by (rule triangle_angle_sum)
  hence "angle T R S + angle T S R + 50 * (pi/180) = pi"
    using angle_STR by simp
  hence "angle T R S + angle T R S + 50 * (pi/180) = pi"
    using `angle T S R = angle R S T` by simp
  hence "2 * angle T R S = pi - 50 * (pi/180)"
    by simp
  hence "2 * angle T R S = (180 - 50) * (pi/180)"
    by (simp add: algebra_simps)
  hence "2 * angle T R S = 130 * (pi/180)"
    by simp
  hence "angle T R S = 65 * (pi/180)"
    by (simp add: field_simps)
  thus ?thesis by simp
qed
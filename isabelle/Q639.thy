theory Quadrilateral_Angle
imports Complex_Main
begin
typedecl point
locale geometry =
  fixes distance :: "point → point → real" 
  fixes angle :: "point → point → point → real"
  assumes angle_bounds: "⋀A B C. 0 ≤ angle A B C ∧ angle A B C < 360"
context geometry
begin
fixes M P Q R :: point
fixes x :: real
assumes x_pos: "0 < x"
assumes angle_MRQ: "angle M R Q = 5 * x"
assumes angle_PMR: "angle P M R = x"
assumes angle_QPM: "angle Q P M = 4 * x"
assumes angle_RQP: "angle R Q P = 2 * x"
lemma quadrilateral_angle_sum: 
  "angle M R Q + angle R Q P + angle Q P M + angle P M R = 360"
  sorry
theorem measure_of_angle_PMR:
  "x = 30"
proof -
  have "angle M R Q + angle R Q P + angle Q P M + angle P M R = 360" 
    by (rule quadrilateral_angle_sum)
  then have "5 * x + 2 * x + 4 * x + x = 360" 
    using angle_MRQ angle_RQP angle_QPM angle_PMR by simp
  then have "12 * x = 360" by simp
  then have "x = 360 / 12" by (simp add: x_pos)
  then show "x = 30" by simp
qed
corollary PMR_value: "angle P M R = 30"
  using measure_of_angle_PMR angle_PMR by simp
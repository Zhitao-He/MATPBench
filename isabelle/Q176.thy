theory Find_X_Problem
  imports Main
begin
definition angle_Top :: "real ⇒ real"
  where "angle_Top x = 3 * x - 15"
definition angle_Left_Base :: real
  where "angle_Left_Base = 68"
definition angle_Corresponding_Inner :: "real ⇒ real"
  where "angle_Corresponding_Inner x = 2 * x"
theorem solve_for_x:
  fixes x :: real 
  assumes correspondence_eq: "angle_Corresponding_Inner x = angle_Left_Base"
  shows "x = 34"
proof -
  from correspondence_eq
  unfold angle_Corresponding_Inner_def angle_Left_Base_def
  show ?thesis by simp 
qed
lemma angles_positive_for_x_equals_34:
  shows "angle_Top 34 > 0 ∧ angle_Corresponding_Inner 34 > 0 ∧ angle_Left_Base > 0"
proof
  show "angle_Top 34 > 0"
    by (unfold angle_Top_def, simp) 
  show "angle_Corresponding_Inner 34 > 0"
    by (unfold angle_Corresponding_Inner_def, simp) 
  show "angle_Left_Base > 0"
    by (unfold angle_Left_Base_def, simp) 
qed
end
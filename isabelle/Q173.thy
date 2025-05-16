theory TriangleAngle
imports Complex_Main
begin
theorem triangle_angle_2_is_34:
  fixes angle_A angle_C angle_ABC angle_1 angle_2 angle_3 :: real
  assumes "angle_A = 42" 
    and "angle_C = 38" 
    and "angle_ABC = 72"
    and partition: "angle_1 + angle_2 + angle_3 = angle_ABC"
    and "angle_1 = 19"
    and "angle_3 = 19"
  shows "angle_2 = 34"
proof -
  have "angle_2 = angle_ABC - angle_1 - angle_3" using partition by simp
  also have "... = 72 - 19 - 19" 
    using ‹angle_ABC = 72› ‹angle_1 = 19› ‹angle_3 = 19› by simp
  also have "... = 34" by simp
  finally show "angle_2 = 34" .
qed
theory CircleAngleProblem
imports 
  Complex_Main
  "HOL-Analysis.Analysis"
begin
locale circle_angle_problem =
  fixes A V W X Y Z :: "complex"  
  fixes x :: real
  assumes circle_A: "A is_center_of {z. cmod (z - A) = cmod (V - A)}"
  assumes angle_YVW: "angle (Y - V) (W - V) = 25 * (pi/180)"
  assumes angle_AXZ: "angle (A - X) (Z - X) = 110 * (pi/180)"
  assumes angle_AYW: "angle (A - Y) (W - Y) = x * (pi/180)"
begin
theorem value_of_x: "x = 60"
proof -
  have "x = 60" 
  proof -
    sorry
  qed
  thus ?thesis by simp
qed
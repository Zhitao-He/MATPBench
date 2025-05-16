theory AngleCalculation
imports Complex_Main
begin
locale angle_problem =
  fixes x :: real
  fixes Z Y W X :: "real × real"  
  assumes angle_ZYW: "angle Z Y W = 2 * x - 7"
  assumes angle_WYX: "angle W Y X = 2 * x + 5"
begin
lemma solve_for_x:
  "x = 23"
proof -
theorem angle_ZYW_value:
  "angle Z Y W = 39"
proof -
  from solve_for_x have "x = 23" by simp
  with angle_ZYW have "angle Z Y W = 2 * 23 - 7" by simp
  also have "... = 46 - 7" by simp
  also have "... = 39" by simp
  finally show ?thesis .
qed
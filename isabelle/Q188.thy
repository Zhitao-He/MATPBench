theory CentralAnglesSum
imports
  Complex_Main
  "HOL-Analysis.Analysis"
begin
text ‹Find $x$ is 162›
theorem central_angles_sum:
  fixes x :: real
  shows "x = 162"
proof -
  have "x + 90 + 84 + 24 = 360" by auto
  hence "x = 360 - 90 - 84 - 24" by simp
  also have "... = 360 - 198" by simp
  also have "... = 162" by simp
  finally show "x = 162" .
qed
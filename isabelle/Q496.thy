theory GeometryProblem
imports Complex_Main Real
begin
theorem triangle_RS_length:
  assumes "SR = 3*x - 5" and "TR = 2*x + 7" and "TS = 22" 
  and "∠RST = ∠STR" 
  shows "RS = 31"
proof -
  have "SR = TR" using assms(4)
    by (metis angle_equality_implies_isosceles_triangle)
  then have "3*x - 5 = 2*x + 7" using assms(1) assms(2)
    by simp
  then have "x = 12" 
    by simp
  then have "SR = 3*12 - 5" using assms(1)
    by simp
  then have "SR = 31"
    by simp
  then show "RS = 31"
    by simp
qed
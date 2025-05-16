theory TrianglePartition
  imports Main Real
begin
lemma triangle_area_problem:
  fixes S1 S2 S3 S4 S5 S6 :: real
  assumes "S1 = 84" and "S2 = 35" and "S3 = 30" and "S4 = 40"
  assumes "S5 + S6 = 126" 
  shows "S1 + S2 + S3 + S4 + S5 + S6 = 315"
proof -
  have "S1 + S2 + S3 + S4 = 84 + 35 + 30 + 40" using assms(1) assms(2) assms(3) assms(4) by simp
  hence "S1 + S2 + S3 + S4 = 189" by simp
  hence "S1 + S2 + S3 + S4 + S5 + S6 = 189 + S5 + S6" by simp
  hence "S1 + S2 + S3 + S4 + S5 + S6 = 189 + 126" using assms(5) by simp
  thus "S1 + S2 + S3 + S4 + S5 + S6 = 315" by simp
qed
theorem triangle_total_area: "triangle ABC的面积 = 315" 
  oops
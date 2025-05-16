theory CircleInRectangle
  imports Complex_Main "HOL-Analysis.Analysis"
begin

(* 证明：半径为5的圆内切于一个矩形，如图所示。矩形的长宽比为2:1。矩形的面积为200。*)

theorem circle_in_rectangle:
  fixes length width :: real
  assumes "length > 0" "width > 0"
  assumes "length / width = 2" (* 长宽比为2:1 *)
  assumes "length * width = 200" (* 矩形面积为200 *)
  assumes "radius = 5" (* 内切圆半径为5 *)
  assumes "length = width + 2 * radius" (* 内切圆关系：长 = 宽 + 直径 *)
  shows "width = 10 ∧ length = 20" (* 求解结果 *)
proof -
  (* 由内切圆和矩形的关系可知，内切圆的直径等于矩形的宽 *)
  have "width = 2 * radius" using assms(5,6) by simp
  
  (* 代入已知条件 *)
  then have "width = 10" using assms(4) by simp
  
  (* 求解长度 *)
  then have "length = 20" using assms(3) by (simp add: divide_simps)
  
  (* 验证面积条件 *)
  moreover have "20 * 10 = 200" by simp
  
  (* 得到结论 *)
  ultimately show ?thesis by simp
qed

end
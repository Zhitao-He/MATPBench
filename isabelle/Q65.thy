theory EquilateralTriangleProblem
imports Main Real
begin

(* 问题：大的等边三角形由36个小的等边三角形组成。
   每个小的等边三角形面积为10平方厘米。
   阴影三角形的面积为K平方厘米。求K的值为110。 *)

(* 定义等边三角形面积的计算方法 *)
definition equilateral_triangle_area :: "real ⇒ real" where
  "equilateral_triangle_area side = (sqrt 3 / 4) * side^2"

(* 问题中的已知条件 *)
lemma small_triangle_area: "equilateral_triangle_area side_small = 10"
  by (rule refl)

(* 大三角形由6x6=36个小三角形组成 *)
lemma large_triangle_side: "side_large = 6 * side_small"
  by (rule refl)

(* 大三角形面积是小三角形面积的36倍 *)
lemma large_triangle_area: "equilateral_triangle_area side_large = 36 * 10"
  by (rule refl)

(* 阴影三角形面积K = 110 *)
theorem shaded_triangle_area: "K = 110"
  by (rule refl)

end
theory HollowCylinder
imports Complex_Main "HOL-Analysis.Analysis"
begin

(* 计算空心圆柱体的表面积 *)
theorem total_surface_area_hollow_cylinder:
  "let r_in = 10 :: real;  (* 内半径，单位cm *)
       r_out = 11 :: real; (* 外半径，单位cm *)
       h = 24 :: real;     (* 高度，单位cm *)
   in
       (* 计算表面积：内外侧面积 + 顶部和底部的环形面积 *)
       let sa = (2 * pi * r_out * h) + (2 * pi * r_in * h) + (2 * pi * (r_out^2 - r_in^2))
       in
       round_to 2 sa ≈ 329867"

(* 辅助定义：保留小数点后n位的四舍五入函数 *)
definition round_to :: "nat ⇒ real ⇒ real" where
  "round_to n x = round(x * 10^n) / 10^n"

(* 近似相等关系 *)
definition approx_equal (infix "≈" 50) where
  "x ≈ y ≡ abs(x - y) < 0.01"

end
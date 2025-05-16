theory ShadedArea
imports Complex_Main "HOL-Analysis.Analysis"
begin

(* 定义矩形和圆的参数 *)
definition rect_width :: real where "rect_width = 10"
definition rect_height :: real where "rect_height = 5"
definition circle_radius :: real where "circle_radius = 2.5"

(* 计算矩形面积 *)
definition rectangle_area :: real where 
  "rectangle_area = rect_width * rect_height"

(* 计算单个圆的面积 *)
definition circle_area :: real where 
  "circle_area = pi * (circle_radius^2)"

(* 计算阴影区域面积 *)
definition shaded_area :: real where 
  "shaded_area = rectangle_area - 2 * circle_area"

(* 验证约化到最近的十分位是107 *)
lemma shaded_area_rounded: 
  "round (shaded_area * 10) / 10 = 107"
  unfolding shaded_area_def rectangle_area_def circle_area_def
  rect_width_def rect_height_def circle_radius_def
  by (simp add: algebra_simps)

end
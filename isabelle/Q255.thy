theory SurfaceAreaCalculation
imports Complex_Main "HOL-Analysis.Analysis"
begin

(* 定义矩形棱柱的尺寸 *)
definition rect_length :: real where "rect_length = 65"
definition rect_width :: real where "rect_width = 21"
definition rect_height :: real where "rect_height = 10"

(* 定义圆柱体的尺寸 *)
definition cyl_radius :: real where "cyl_radius = 5"
definition cyl_height :: real where "cyl_height = 11"

(* 矩形棱柱的表面积 *)
definition rectangle_surface_area :: real where
  "rectangle_surface_area = 2 * (rect_length * rect_width + 
                                 rect_length * rect_height + 
                                 rect_width * rect_height)"

(* 圆柱体的侧面积 *)
definition cylinder_lateral_area :: real where
  "cylinder_lateral_area = 2 * pi * cyl_radius * cyl_height"

(* 圆柱体的顶面积 *)
definition cylinder_top_area :: real where
  "cylinder_top_area = pi * (cyl_radius^2)"

(* 完整立体图形的暴露表面积 
   矩形棱柱的表面积减去被圆柱体覆盖的面积，加上圆柱体的侧面积和顶面积 *)
definition exposed_surface_area :: real where
  "exposed_surface_area = rectangle_surface_area - cylinder_top_area +
                         cylinder_lateral_area + cylinder_top_area"

(* 验证计算结果 *)
lemma "rectangle_surface_area = 437146"
  unfolding rectangle_surface_area_def rect_length_def rect_width_def rect_height_def
  by auto

(* 计算最终的暴露表面积 *)
lemma exposed_surface_area_value:
  shows "exposed_surface_area = rectangle_surface_area - cylinder_top_area + 
                               cylinder_lateral_area + cylinder_top_area"
  by (simp add: exposed_surface_area_def)

(* 数值计算结果 *)
value "exposed_surface_area"

end
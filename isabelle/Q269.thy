theory TriangularPrism
  imports Main "HOL-Analysis.Analysis"
begin

(* 三角面：底边长12厘米，两条边长10厘米，高为x的等腰三角形。
   棱柱长度为16厘米。 *)

definition base_length :: real where "base_length = 12"
definition leg_length :: real where "leg_length = 10"
definition height :: real where "height = sqrt(leg_length^2 - (base_length/2)^2)"
definition prism_length :: real where "prism_length = 16"

definition triangle_area :: real where "triangle_area = (base_length * height) / 2"
definition lateral_area :: real where "lateral_area = (base_length + 2 * leg_length) * prism_length"

definition total_surface_area :: real where "total_surface_area = 2 * triangle_area + lateral_area"

theorem prism_surface_area_608: "total_surface_area = 608"
  sorry

end
theory Figure_Angles
imports Main
begin
typedecl point
consts P :: point
consts A :: point
consts B :: point
consts geometric_angle :: "point ⇒ point ⇒ point ⇒ real"
consts x :: real
axiomatization where
  angle_PAB_value: "geometric_angle P A B = 55" and
  angle_PBA_value: "geometric_angle P B A = 75" and
  angle_APB_is_x:  "geometric_angle A P B = x" and
  triangle_angle_sum_property:
    "geometric_angle P A B + geometric_angle P B A + geometric_angle A P B = 180"
theorem problem_statement: "x = 50"
  oops 
end
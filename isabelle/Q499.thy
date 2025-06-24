theory Problem_Definition
  imports
    Main
    "HOL-Analysis.Trigonometry" 
begin
locale triangle_geometry_problem =
  fixes x :: real 
  fixes y :: real 
  defines
    bc_value: "BC_length == 18" and
    angle_B_value_rad: "angle_B_rad == 30 * (pi / 180)" and 
    angle_A_value_rad: "angle_A_rad == 90 * (pi / 180)"   
  assumes
    x_positive: "x > 0" and
    y_positive: "y > 0" and
    y_relation: "cos angle_B_rad = y / BC_length" and
    x_relation: "sin angle_B_rad = x / BC_length"
begin
end 
end
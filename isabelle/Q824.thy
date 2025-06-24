theory Geometry_Problem_Angles
imports Main 
begin
theorem solve_for_x:
  fixes x :: real 
    and angle_CEB :: real 
    and angle_EFD :: real 
    and angle_FDE :: real 
    and angle_DEF :: real 
  assumes
    given_angle_CEB: "angle_CEB = 40"
    and given_angle_EFD: "angle_EFD = 2 * x"
    and equality_EFD_FDE: "angle_EFD = angle_FDE"
    and vertical_angles: "angle_DEF = angle_CEB" 
    and triangle_angle_sum_FDE: "angle_EFD + angle_FDE + angle_DEF = 180" 
  shows "x = 35"
  oops 
end
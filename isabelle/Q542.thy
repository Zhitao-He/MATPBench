theory FDG_Angle
  imports Complex_Main "HOL-Analysis.Euclidean_Space"
begin
locale angle_problem =
  fixes D E F G :: "real^2"
  assumes angleEF: "angle E F G = pi/180 * 65"
  and angleDE: "angle D E F = pi/180 * 25"
  and perpendicular: "orthogonal (D - G) (E - G)"
theorem measure_of_angle_FDG:
  assumes "angleEF" "angleDE" "perpendicular"
  shows "angle F D G = pi/180 * 25"
begin
  
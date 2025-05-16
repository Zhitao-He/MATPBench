theory AngleProblem
imports
  Main
  "HOL-Analysis.Analysis"
begin
locale angle_problem =
  fixes A B C D E F G :: "real × real"
  assumes adg_angle: "angle D G A = 36"
  and agf_angle: "angle A G F = 104"
  and efc_angle: "angle E F C = 40"
  and gb_perpendicular_to_cb: "perpendicular (G - B) (C - B)"
context angle_problem
begin
theorem dga_angle: "angle D G A = 76"
  sorry 
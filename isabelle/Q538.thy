theory CircleAngleProblem
imports Main Complex_Main "HOL-Analysis.Euclidean_Space"
begin
locale circle_angle_problem =
  fixes B :: "real^2"  
  fixes C D F G :: "real^2"  
  assumes on_circle_C: "norm (C - B) = norm (D - B)"  
  assumes on_circle_F: "norm (F - B) = norm (G - B)"  
  assumes angle_CBD: "angle (C - B) (D - B) = 55 * pi / 180"  
lemma arc_BCD_measure: "angle (C - B) (D - B) * 180 / pi = 55"
  using angle_CBD by simp
theorem measure_of_arc_BCD: "360 - angle (C - B) (D - B) * 180 / pi = 305"
  using arc_BCD_measure by simp
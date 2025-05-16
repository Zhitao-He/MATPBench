theory GeometryTheorem
imports Complex_Main "HOL-Analysis.Euclidean_Space"
begin
locale geometry_problem =
  fixes W X Y Z H I J :: "real^2"
  assumes W_neq_X: "W ≠ X"
  and X_neq_Y: "X ≠ Y"
  and Y_neq_Z: "Y ≠ Z"
  and Z_neq_I: "Z ≠ I"
  and I_neq_J: "I ≠ J"
  and J_neq_H: "J ≠ H"
  and H_neq_X: "H ≠ X"
  and X_neq_J: "X ≠ J"
  and angle_WXH: "angle W X H = 130 * (pi/180)"
  and angle_YZI: "angle Y Z I = 20 * (pi/180)"
  and similar_triangles: "dist I J * dist Y J = dist H J * dist X J"
definition measure_of_angle :: "real^2 ⇒ real^2 ⇒ real^2 ⇒ real" where
  "measure_of_angle A B C = angle A B C * (180/pi)"
theorem measure_of_angle_HIJ:
  shows "measure_of_angle H I J = 50"
theory AngleProblem
imports
  Complex_Main
  "HOL-Analysis.Euclidean_Space"
begin
locale trapezoid =
  fixes W X Y Z :: "real^2"
  assumes trapezoid_shape: "X ≠ W" and "Y ≠ Z" and "collinear X Y" and "collinear W Z"
  assumes parallel_sides: "parallel_lines (line X W) (line Y Z)"
  assumes WZ_length: "dist W Z = 23"
  assumes XY_length: "dist X Y = 23"
  assumes ZWX_angle: "angle Z W X = 112 / 180 * pi"
context trapezoid
begin
lemma finds_measure_of_angle_YZW:
  "angle Y Z W = 68 / 180 * pi"
proof -
  have "angle Z Y X = angle W Z Y"
    by (simp add: parallel_lines_internal_angles parallel_sides)
  have angle_sum: "angle Z W X + angle W X Y + angle X Y Z + angle Y Z W = 2 * pi"
    by (simp add: quadrilateral_angles)
  have "angle Z W X = 112 / 180 * pi" by (simp add: ZWX_angle)
  thus "angle Y Z W = 68 / 180 * pi"
    by (metis angle_sum pi_approx)
qed
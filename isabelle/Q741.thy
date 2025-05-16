theory CircleAngleProblem
imports
  Complex_Main
  "HOL-Analysis.Euclidean_Space"
begin
locale circle_angle_problem =
  fixes F B C D :: "real^2"
    and x :: real
  assumes 
    "angle_of_vectors (D - F) (B - F) = 165 * (pi / 180)"
    "angle_of_vectors (B - F) (C - F) = 145 * (pi / 180)"
    "angle_of_vectors (C - F) (D - F) = x * (pi / 180)"
    "D ≠ F" "F ≠ B" "B ≠ C" "C ≠ D"
context circle_angle_problem
begin
lemma sum_of_angles:
  "angle_of_vectors (D - F) (B - F) + angle_of_vectors (B - F) (C - F) + angle_of_vectors (C - F) (D - F) = 2 * pi"
  by (simp add: angle_full_turn)
theorem value_of_x:
  "x = 50"
proof -
  have "angle_of_vectors (C - F) (D - F) = 2 * pi - angle_of_vectors (D - F) (B - F) - angle_of_vectors (B - F) (C - F)"
    using sum_of_angles by algebra
  also have "... = 2 * pi - 165 * (pi / 180) - 145 * (pi / 180)"
    using assms by simp
  also have "... = 2 * pi - (165 + 145) * (pi / 180)"
    by algebra
  also have "... = 2 * pi - 310 * (pi / 180)"
    by simp
  also have "... = 360 * (pi / 180) - 310 * (pi / 180)"
    by (simp add: pi_approx)
  also have "... = (360 - 310) * (pi / 180)"
    by algebra
  also have "... = 50 * (pi / 180)"
    by simp
  finally have "angle_of_vectors (C - F) (D - F) = 50 * (pi / 180)" .
  thus "x = 50" using assms(3) by simp
qed
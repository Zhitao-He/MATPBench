theory GeometryProblem
  imports Complex_Main "HOL-Analysis.Euclidean_Space"
begin
locale geometry_problem =
  fixes A B C D E :: "real^2"
  fixes x :: real
  assumes dist_AD: "dist A D = 10"
  and dist_BC: "dist B C = 15"
  and dist_BE: "dist B E = 6"
  and dist_EC: "dist E C = 12"
  and dist_ED: "dist E D = 3 * x - 2"
  and angle_eq: "angle D A E = angle C B E"
theorem (in geometry_problem) find_x: "x = 2"
proof -
  have "angle A D E = angle B C E"
    using angle_eq by (simp add: vertical_angles)
  have "dist A D / dist E D = dist B C / dist E C"
    using angle_eq by (simp add: similar_triangles_prop)
  have "10 / (3 * x - 2) = 15 / 12"
    using dist_AD dist_BC dist_EC dist_ED by simp
  have "10 / (3 * x - 2) = 5 / 4" by simp
  have "10 * 4 = (3 * x - 2) * 5" by (simp add: field_simps)
  hence "40 = 15 * x - 10" by (simp add: algebra_simps)
  hence "40 + 10 = 15 * x" by (simp add: algebra_simps)
  hence "50 = 15 * x" by simp
  thus "x = 2" by (simp add: field_simps)
qed
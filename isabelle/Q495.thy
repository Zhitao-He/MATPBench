theory GeometryProblem
  imports Main HOL.Euclidean_Geometry
begin
locale parallel_angle_problem =
  fixes H N J K F A :: "real point"
  assumes distinct_points: "H ≠ N" "N ≠ J" "J ≠ K" "A ≠ J" "F ≠ N"
  assumes NJK_angle: "angle N J K = 101"
  assumes parallel_lines: "parallel_lines (line J A) (line N F)"
context parallel_angle_problem
begin
lemma angle_HNJ: "angle H N J = 79"
proof -
  have "angle N J K + angle H N J = 180"
    using parallel_lines
    by (simp add: parallel_lines_internal_angles)
  then have "101 + angle H N J = 180"
    using NJK_angle
    by simp
  then have "angle H N J = 180 - 101"
    by simp
  then show ?thesis
    by simp
qed
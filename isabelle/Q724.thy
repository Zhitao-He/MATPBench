theory GeometryRSTproblem
imports Complex_Main "HOL-Analysis.Euclidean_Space"
begin
locale geometry_RST_problem =
  fixes O U R S T :: "real^2"
  assumes on_circle: "norm (U - O) = norm (R - O)" "norm (T - O) = norm (R - O)"
  and distinct_points: "O ≠ U" "O ≠ R" "O ≠ T" "U ≠ R" "U ≠ T" "R ≠ T" "R ≠ S" "S ≠ T"
  and collinear_RST: "∃α. S = R + α *⇩R (T - R) ∧ 0 < α ∧ α < 1"
  and tangent_perpendicular: "((S - R) ∙ (O - R)) = 0"
  and angle_TOR: "angle_of_vectors (T - O) (R - O) = 71 * pi / 180"
  and angle_UOR: "angle_of_vectors (U - O) (R - O) = 179 * pi / 180"
begin
theorem angle_RST: "angle_of_vectors (R - S) (T - S) = 55 * pi / 180"
  sorry
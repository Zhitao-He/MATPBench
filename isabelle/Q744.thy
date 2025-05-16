theory AngleSumTheorem
imports 
  Main
  "HOL-Analysis.Euclidean_Space"
begin

section "Angle Sum Theorem"

locale angle_sum_problem =
  fixes A D H E F G C :: "real^2"
  assumes collinear_GDCE: "collinear {G, D, C, E}"
  assumes between_relations: "between G D E ∧ between E C D"
  assumes H_not_collinear: "¬ collinear {D, H, E}"
  assumes right_angle_DHE: "angle D H E = pi/2"
  defines "b ≡ angle A D H"
  defines "a ≡ angle F E H"
  
theorem angle_sum_vertical: "a + b = pi/2"
proof -
  have "angle D H E = pi/2" using right_angle_DHE by simp
  have "angle H E G = angle F E C" 
    using collinear_GDCE between_relations
    by (simp add: vertical_angles)
  have "angle G D A = angle E D H"
    using collinear_GDCE between_relations
    by (simp add: vertical_angles)
  have "angle D H E + angle H D E + angle H E D = pi"
    by (rule triangle_angle_sum)
  have "angle H D E = pi - angle A D H - angle D H E"
    using b_def by (simp add: angle_supplement)
  have "angle H E D = pi - angle F E H - angle D H E"
    using a_def by (simp add: angle_supplement)
  then show "a + b = pi/2"
    using angle_addition angle_subtraction
    by (simp add: a_def b_def)
qed

end
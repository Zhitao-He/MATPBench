theory AngleEquation
imports
  Main
  "HOL-Analysis.Euclidean_Space"
begin

section "Angle Equation Problem"

text "As shown in the diagram, ∠ACF=140°, ∠IGE=9*x°, GD is parallel to CA. Find the value of x."

locale angle_equation =
  fixes A C F I G E D :: "real^2"
  assumes angle_ACF: "angle A C F = pi * 140 / 180"
  and angle_IGE: "angle I G E = pi * 9 * x / 180"
  and parallel_GD_CA: "parallel_lines (G, D) (C, A)"
  and distinct_points: "distinct_points {A, C, F, I, G, E, D}"
begin

(* Parallel lines produce corresponding angles *)
lemma corresponding_angles:
  assumes "parallel_lines (G, D) (C, A)"
  shows "angle D G C = angle F C A"
proof -
  (* This follows from the properties of parallel lines *)
  from parallel_GD_CA have "angle D G C = angle F C A"
    by (simp add: corresponding_angles_parallel)
  thus ?thesis .
qed

(* By the vertical angle theorem *)
lemma vertical_angles:
  "angle D G C = angle I G E"
proof -
  (* This follows from vertical angles being congruent *)
  have "angle D G C = angle I G E"
    by (simp add: vertical_angles_theorem)
  thus ?thesis .
qed

theorem value_of_x:
  "x = 140/9"
proof -
  have "angle F C A = pi * 140 / 180" 
    using angle_ACF by simp
  moreover have "angle D G C = angle F C A" 
    by (rule corresponding_angles)
  moreover have "angle I G E = angle D G C" 
    by (rule vertical_angles)
  moreover have "angle I G E = pi * 9 * x / 180" 
    using angle_IGE by simp
  ultimately have "pi * 9 * x / 180 = pi * 140 / 180" 
    by simp
  hence "9 * x = 140" 
    by (simp add: real_mult_eq_cancel_iff)
  thus "x = 140/9" 
    by simp
qed

end
end
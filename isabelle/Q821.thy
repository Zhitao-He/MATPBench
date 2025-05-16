theory GeometryProblem
imports Main Complex_Main "HOL-Analysis.Euclidean_Space"
begin
locale geometry_problem =
  fixes B C D E F :: "real^2"
    and x y :: real
  assumes angle_BCF: "triangle_angle B C F = 120"
    and angle_DBC: "triangle_angle D B C = 5 * y"
    and angle_DFE: "triangle_angle D F E = 108" 
    and angle_FDB: "triangle_angle F D B = 2 * x"
    and parallel_BD_CE: "are_parallel B D C E"
definition triangle_angle :: "real^2 ⇒ real^2 ⇒ real^2 ⇒ real" where
  "triangle_angle A B C = angle_between_vectors (A - B) (C - B)"
definition are_parallel :: "real^2 ⇒ real^2 ⇒ real^2 ⇒ real^2 ⇒ bool" where
  "are_parallel A B C D = (∃k. k ≠ 0 ∧ (B - A) = k *⇩R (D - C))"
theorem value_of_y:
  assumes "angle_BCF = 120"
    and "angle_DBC = 5 * y"
    and "angle_DFE = 108"
    and "angle_FDB = 2 * x"
    and "are_parallel B D C E"
  shows "y = 12"
  
theory RightTriangleAngle
  imports Main HOL.Euclidean_Geometry
begin
locale right_triangle_with_parallel_lines =
  fixes A B C D E F G H :: "point"
  assumes 
    parallel_lines: "parallel_lines D E F G"
    and C_on_DE: "on_line C D E"
    and triangle_ABC: "triangle A B C"
    and right_angle_C: "angle A C B = pi/2"
    and angle_BAC_60: "angle B A C = pi/3"
    and A_vertex_60: "angle_of_vertex A = pi/3"
    and AB_bisects_CAG: "bisects_angle A B (C, A, G)"
    and H_on_DE: "on_line H D E"
    and H_on_AB: "between A H B"
    and C_right_vertex: "right_vertex C"
theorem angle_BCH_30:
  shows "angle B C H = pi/6"
  sorry
theory Geometry_Problem_Formalization
  imports
    "HOL-Analysis.Euclidean_Geometry" 
    "HOL-Analysis.Cartesian_Geometry" 
begin
type_synonym point = "'a :: euclidean_space"
locale geometric_problem_statement =
  fixes A B C F D E G H I :: point 
  assumes
    not_collinear_ABC: "¬ collinear {A, B, C}" and
    acute_A: "angle C A B > 0 ∧ angle C A B < pi / 2" and
    acute_B: "angle A B C > 0 ∧ angle A B C < pi / 2" and
    acute_C: "angle B C A > 0 ∧ angle B C A < pi / 2" and
    angle_B_gt_angle_C: "angle A B C > angle B C A" and
    F_def: "F = midpoint B C" and
    E_def: "E = orthogonal_projection (line_through A C) B" and
    D_def: "D = orthogonal_projection (line_through A B) C" and
    G_def: "G = midpoint F D" and
    H_def: "H = midpoint F E" and
    G_not_H: "G ≠ H" and
    I_on_line_A_parallel_BC: "I ∈ line_through_dir A (C - B)" and
    I_on_line_GH: "I ∈ line_through G H" and
    lines_AI_GH_not_parallel: "¬ lines_parallel (line_through_dir A (C - B)) (line_through G H)"
begin
theorem AI_equals_FI:
  "dist A I = dist F I"
  oops 
end 
end 
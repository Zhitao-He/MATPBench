theory Geometry_Problem_Formalization
  imports "HOL-Analysis.Euclidean_Space"
begin
type_synonym point = "real ^ (2::dim)" 
definition det2 :: "point ⇒ point ⇒ real" where
  "det2 u v = (u$(0::dim)) * (v$(1::dim)) - (u$(1::dim)) * (v$(0::dim))"
definition distance_point_line :: "point ⇒ point ⇒ point ⇒ real" where
  "distance_point_line P A B =
    (if A = B then dist P A
     else abs (det2 (P - A) (B - A)) / dist A B)"
definition is_strictly_inside_triangle :: "point ⇒ point ⇒ point ⇒ point ⇒ bool" where
  "is_strictly_inside_triangle P A B C ⟷
    (let o_AB_P = det2 (B - A) (P - A); 
         o_BC_P = det2 (C - B) (P - B); 
         o_CA_P = det2 (A - C) (P - C); 
         o_ABC_orientation_ref = det2 (B - A) (C - A) 
     in o_ABC_orientation_ref ≠ 0 ∧ 
        sgn o_AB_P = sgn o_ABC_orientation_ref ∧
        sgn o_BC_P = sgn o_ABC_orientation_ref ∧
        sgn o_CA_P = sgn o_ABC_orientation_ref)"
definition is_incenter :: "point ⇒ point ⇒ point ⇒ point ⇒ bool" where
  "is_incenter I A B C ⟷
    is_strictly_inside_triangle I A B C ∧
    distance_point_line I A B = distance_point_line I B C ∧
    distance_point_line I B C = distance_point_line I C A"
locale ProblemContext =
  fixes A B C D E F G J K M N :: point 
  assumes
    non_collinear_ABC: "¬ collinear {A, B, C}" and 
    D_on_segment_BC: "on_segment D B C" and
    D_not_B: "D ≠ B" and
    D_not_C: "D ≠ C" and
    E_is_incenter_ABD: "is_incenter E A B D" and
    F_is_incenter_ACD: "is_incenter F A C D" and
    G_on_circle_E: "dist G E = dist D E" and
    G_on_circle_F: "dist G F = dist D F" and
    G_not_D: "G ≠ D" and
    J_on_circle_E: "dist J E = dist D E" and
    J_on_segment_AB: "on_segment J A B" and
    J_not_A: "J ≠ A" and J_not_B: "J ≠ B" and
    K_on_circle_E: "dist K E = dist D E" and
    K_on_segment_BD: "on_segment K B D" and 
    K_not_B: "K ≠ B" and K_not_D: "K ≠ D" and
    M_on_circle_F: "dist M F = dist D F" and
    M_on_segment_AC: "on_segment M A C" and
    M_not_A: "M ≠ A" and M_not_C: "M ≠ C" and
    N_on_circle_F: "dist N F = dist D F" and
    N_on_segment_CD: "on_segment N C D" and 
    N_not_C: "N ≠ C" and N_not_D: "N ≠ D" and
    J_not_K: "J ≠ K" and
    M_not_N: "M ≠ N"
begin
theorem concurrency_of_lines_JK_MN_GD:
  "∃P. P ∈ line J K ∧ P ∈ line M N ∧ P ∈ line G D"
by sorry 
end 
end 
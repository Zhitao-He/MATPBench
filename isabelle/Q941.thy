theory GeometryProblem
  imports "HOL-Analysis.Euclidean_Space"
begin
type_synonym point = "real^2"
lemma problem_statement:
  fixes A B C D E M N :: point
  assumes
    A_ne_B: "A ≠ B" and
    B_ne_C: "B ≠ C" and
    A_ne_C: "A ≠ C" and
    non_collinear_ABC: "¬ collinear {A, B, C}" and
    D_on_segment_BC: "D ∈ segment B C" and
    A_ne_D: "A ≠ D" and
    AD_bisects_BAC: "angle_between_vectors (B - A) (D - A) = angle_between_vectors (D - A) (C - A)" and
    E_midpoint_AD: "E = midpoint A D" and
    B_ne_E: "B ≠ E" and
    C_ne_E: "C ≠ E" and
    M_on_segment_BE: "M ∈ segment B E" and
    N_on_segment_CE: "N ∈ segment C E" and
    A_ne_M: "A ≠ M" and
    C_ne_M: "C ≠ M" and
    AMC_right_angle: "angle_between_vectors (A - M) (C - M) = pi / 2" and
    A_ne_N: "A ≠ N" and
    B_ne_N_for_ANB: "B ≠ N" and 
    ANB_right_angle: "angle_between_vectors (A - N) (B - N) = pi / 2" and
    M_ne_B_for_MBN: "M ≠ B" and
    N_ne_B_for_MBN: "N ≠ B" and 
    M_ne_C_for_MCN: "M ≠ C" and
    N_ne_C_for_MCN: "N ≠ C"
  shows "angle_between_vectors (M - B) (N - B) = angle_between_vectors (M - C) (N - C)"
  sorry 
end
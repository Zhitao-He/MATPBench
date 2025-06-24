theory GeometricProblem_MN_Parallel_AB
  imports "HOL-Analysis.Euclidean_Space"
begin
lemma find_length_BN:
  fixes C A B M N :: "real^2" 
  assumes
    M_on_CA: "on_segment C M A" and
    N_on_CB: "on_segment C N B" and
    length_CM: "dist C M = 3" and
    length_MA: "dist M A = 5" and
    length_CN: "dist C N = (2.4 :: real)" and 
    not_collinear_CAB: "\<not> collinear C A B" and
    MN_parallel_AB: "vector_parallel (N - M) (B - A)"
  shows "dist N B = 4"
proof -
  sorry
qed
end
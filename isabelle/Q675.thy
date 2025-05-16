theory ParallelogramAngle
imports 
  Main
  "HOL-Analysis.Euclidean_Space"
begin
locale parallelogram =
  fixes A B C D :: "'a::euclidean_space"
  assumes "parallel_line (line_of A D) (line_of B C)"
      and "parallel_line (line_of D C) (line_of A B)"
locale problem = parallelogram +
  fixes E :: "'a::euclidean_space"
  assumes "angle A D E = 43"
context problem
begin
lemma angle_ABC_value: "angle A B C = 137"
proof -
  have "angle B A D + angle A D C = 180"
    using parallelogram_angles by auto
  moreover have "angle A D C = angle A D E"
    by (simp add: assms)
  moreover have "angle A D E = 43"
    by (simp add: assms)
  moreover have "angle B A D = angle D C B"
    using parallelogram_opposite_angles by auto
  moreover have "angle D C B = angle A B C"
    using parallelogram_opposite_angles by auto
  ultimately show "angle A B C = 137"
    by simp
qed
theory ParallelogramProblem
imports Complex_Main "HOL-Analysis.Analysis"
begin
lemma value_of_y:
  fixes x y :: real
  defines "BC ≡ 4*x - 17"
  defines "DF ≡ 2*x - 1" 
  defines "angle_CBF ≡ 3*y + 5"
  defines "angle_DFB ≡ 5*y - 13"
  assumes parallel: "BDFC is a parallelogram" 
  shows "y = 9"
proof -
  have "angle_CBF + angle_DFB = 180"
    using parallel by (metis Real_Vector_Spaces.angle_in_parallelogram_sum_to_180)
  hence "(3*y + 5) + (5*y - 13) = 180" 
    by (simp add: angle_CBF_def angle_DFB_def)
  hence "8*y - 8 = 180" by simp
  hence "8*y = 188" by simp
  thus "y = 9" by simp
qed
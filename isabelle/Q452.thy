theory TrianglePlot
  imports Complex_Main "HOL-Analysis.Euclidean_Space"
begin
definition A :: "real^2" where "A = (0, 0)"
definition C :: "real^2" where "C = (3, 3)"
definition D :: "real^2" where "D = (3, 6)"
definition railroad :: "real^2 ⇒ bool" where
  "railroad P = (fst P = 3)"
definition aspen :: "real^2 ⇒ bool" where
  "aspen P = (snd P = fst P)"
definition brown :: "real^2 ⇒ bool" where
  "brown P = (snd P = 2 * fst P)"
lemma area_triangle_ACD: 
  "norm (det2 (C - A) (D - A)) / 2 = 4.5"
proof -
  have "C - A = (3, 3)" 
    unfolding A_def C_def by simp
  moreover have "D - A = (3, 6)" 
    unfolding A_def D_def by simp
  moreover have "det2 (3, 3) (3, 6) = 3 * 6 - 3 * 3 = 9"
    by (simp add: det2_def)
  ultimately show ?thesis by simp
qed
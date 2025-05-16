theory RightTriangleProblem
imports 
  Complex_Main
  "HOL-Analysis.Euclidean_Space"
begin
type_synonym point2 = "real × real"
definition vec_sub :: "point2 ⇒ point2 ⇒ point2" where
  "vec_sub a b = (fst a - fst b, snd a - snd b)"
definition norm :: "point2 ⇒ real" where
  "norm v = sqrt ((fst v)^2 + (snd v)^2)"
definition dot_product :: "point2 ⇒ point2 ⇒ real" where
  "dot_product u v = (fst u) * (fst v) + (snd u) * (snd v)"
definition orthogonal :: "point2 ⇒ point2 ⇒ bool" where
  "orthogonal u v ⟷ dot_product u v = 0"
theorem length_AB_sqrt34:
  "∃ A B C :: point2.
     norm (vec_sub C A) = 5 ∧
     norm (vec_sub C B) = 3 ∧
     orthogonal (vec_sub C A) (vec_sub C B) ∧
     norm (vec_sub A B) = sqrt 34"
proof -
  let ?C = "(0::real, 0::real)"
  let ?A = "(0::real, 5::real)"
  let ?B = "(3::real, 0::real)"
  have "vec_sub ?A ?B = (0 - 3, 5 - 0)" unfolding vec_sub_def by simp
  hence "vec_sub ?A ?B = (-3, 5)" by simp
  hence "norm (vec_sub ?A ?B) = sqrt ((-3)^2 + 5^2)" unfolding norm_def by simp
  hence "norm (vec_sub ?A ?B) = sqrt (9 + 25)" by simp
  hence "norm (vec_sub ?A ?B) = sqrt 34" by simp
  have "norm (vec_sub ?C ?A) = norm (0 - 0, 0 - 5)" unfolding vec_sub_def by simp
  hence "norm (vec_sub ?C ?A) = norm (0, -5)" by simp
  hence "norm (vec_sub ?C ?A) = sqrt (0^2 + (-5)^2)" unfolding norm_def by simp
  hence "norm (vec_sub ?C ?A) = 5" by simp
  moreover have "norm (vec_sub ?C ?B) = norm (0 - 3, 0 - 0)" unfolding vec_sub_def by simp
  hence "norm (vec_sub ?C ?B) = norm (-3, 0)" by simp
  hence "norm (vec_sub ?C ?B) = sqrt ((-3)^2 + 0^2)" unfolding norm_def by simp
  hence "norm (vec_sub ?C ?B) = 3" by simp
  moreover have "vec_sub ?C ?A = (0 - 0, 0 - 5)" unfolding vec_sub_def by simp
  hence "vec_sub ?C ?A = (0, -5)" by simp
  moreover have "vec_sub ?C ?B = (0 - 3, 0 - 0)" unfolding vec_sub_def by simp
  hence "vec_sub ?C ?B = (-3, 0)" by simp
  hence "dot_product (vec_sub ?C ?A) (vec_sub ?C ?B) = 0 * (-3) + (-5) * 0" 
    unfolding dot_product_def by simp
  hence "dot_product (vec_sub ?C ?A) (vec_sub ?C ?B) = 0" by simp
  hence "orthogonal (vec_sub ?C ?A) (vec_sub ?C ?B)" unfolding orthogonal_def by simp
  ultimately show ?thesis by (rule exI[of _ ?A], rule exI[of _ ?B], rule exI[of _ ?C], auto)
qed
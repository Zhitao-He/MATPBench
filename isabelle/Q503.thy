theory SimilarQuadrilaterals
imports Main HOL.Real
begin
lemma similar_quadrilaterals_problem:
  fixes x :: real
  assumes "area_BLAN = 72"
    and "area_CDEF = 50" 
    and "BN = 6"
    and "CF = x"
    and "quadrilaterals_similar BLAN CDEF"
  shows "x = 5"
proof -
  have "area_CDEF / area_BLAN = (CF / BN)^2" 
    using `quadrilaterals_similar BLAN CDEF` by simp
  hence "50 / 72 = (x / 6)^2" 
    using assms by simp
  hence "50 / 72 = x^2 / 36" by (simp add: power_divide)
  hence "50 * 36 = 72 * x^2" by (simp add: field_simps)
  hence "1800 = 72 * x^2" by simp
  hence "25 = x^2" by simp
  thus "x = 5" by simp
qed
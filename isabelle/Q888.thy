theory QuadrilateralArea
imports
  Complex_Main
  "HOL-Analysis.Euclidean_Space"
begin
locale quadrilateral_problem =
  fixes A B C D E :: "real^2"
  assumes parallelogram: "B - C = D - A" and "A - D = C - B"
  assumes ac_length: "norm (A - C) = 21"
  assumes ad_length: "norm (A - D) = 17" 
  assumes de_length: "norm (D - E) = 8"
  assumes perpendicular1: "(C - A) ⊥ (E - A)"
  assumes perpendicular2: "(D - E) ⊥ (A - E)"
begin
lemma right_triangle_DEA: "((D - E) ⊥ (A - E))"
  by (simp add: perpendicular2)
lemma area_of_BCAD:
  "area_of_quad A B C D = 315"
proof -
  have "area_of_quad A B C D = norm (A - D) * norm (A - B) * sin (angle (A - D) (A - B))"
    sorry 
  have "A - B = A - C + C - B"
    by simp
  also have "C - B = -(B - C)"
    by simp
  also have "... = -(D - A)"
    by (simp add: parallelogram)
  also have "... = A - D"
    by simp
  finally have "A - B = A - C + A - D"
    by simp
  have "perpendicular1 ⟹ (C - A) ⊥ (E - A) ⟹ (C - A) ⊥ (A - E)"
    by (simp add: perpendicular_commute)
  have "norm (A - E)^2 = norm (A - D)^2 - norm (D - E)^2"
    sorry 
  hence "norm (A - E)^2 = 17^2 - 8^2"
    by (simp add: ad_length de_length)
  hence "norm (A - E)^2 = 289 - 64"
    by simp
  hence "norm (A - E)^2 = 225"
    by simp
  hence "norm (A - E) = 15"
    by simp
  have "area_of_quad A B C D = norm (A - D) * norm (A - C) * sin (angle (A - D) (A - C))"
    sorry 
  hence "area_of_quad A B C D = 17 * 21 * sin (angle (A - D) (A - C))"
    by (simp add: ac_length ad_length)
  have "sin (angle (A - D) (A - C)) = 15/21"
    sorry 
  hence "area_of_quad A B C D = 17 * 21 * (15/21)"
    by simp
  hence "area_of_quad A B C D = 17 * 15"
    by simp
  thus "area_of_quad A B C D = 315"
    by simp
qed
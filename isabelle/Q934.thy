theory TrapezoidArea
imports Main "HOL-Analysis.Analysis"
begin
type_synonym point = "real × real"
definition x :: "point ⇒ real" where "x p = fst p"
definition y :: "point ⇒ real" where "y p = snd p"
definition trapezoid_area :: "real ⇒ real ⇒ real ⇒ real" where
  "trapezoid_area a b h = ((a + b) * h) / 2"
theorem trapezoid_BCAD_area:
  fixes B C A D :: point
  assumes "y B = y C" 
  and "y A = y D" 
  and "abs(y B - y A) = 14" 
  and "dist A C = 8" 
  shows "let a = dist B C; b = dist A D in trapezoid_area a b 14 = 84"
proof -
  have "let a = dist B C; b = dist A D in (a + b) = 12"
    using assms by auto
  hence "let a = dist B C; b = dist A D in trapezoid_area a b 14 = 84"
    unfolding trapezoid_area_def by simp
  thus ?thesis by simp
qed
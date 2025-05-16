theory Midpoint_Trapezoid
imports Complex_Main Real
begin
type_synonym point = "real × real"
definition dist :: "point ⇒ point ⇒ real" where
  "dist p1 p2 = sqrt((fst p1 - fst p2)^2 + (snd p1 - snd p2)^2)"
definition collinear :: "point ⇒ point ⇒ point ⇒ bool" where
  "collinear p1 p2 p3 = (∃t. (fst p3 - fst p1) = t * (fst p2 - fst p1) ∧ 
                            (snd p3 - snd p1) = t * (snd p2 - snd p1))"
definition parallel :: "point ⇒ point ⇒ point ⇒ point ⇒ bool" where
  "parallel p1 p2 p3 p4 = (∃k. k ≠ 0 ∧ 
                          fst p1 - fst p2 = k * (fst p3 - fst p4) ∧ 
                          snd p1 - snd p2 = k * (snd p3 - snd p4))"
definition midpoint :: "point ⇒ point ⇒ point" where
  "midpoint p1 p2 = ((fst p1 + fst p2)/2, (snd p1 + snd p2)/2)"
definition midsegment_of_quadrilateral :: "point ⇒ point ⇒ point ⇒ point ⇒ point ⇒ point ⇒ bool" where
  "midsegment_of_quadrilateral Q T S R X Y = 
    (X = midpoint Q T ∧ Y = midpoint R S)"
theorem length_TS_eq_8:
  fixes Q T S R X Y :: point
  assumes "dist Q R = 22"
  assumes "dist X Y = 15"
  assumes "midsegment_of_quadrilateral Q T S R X Y"
  assumes "parallel Q R T S"
  shows "dist T S = 8"
proof -
  have "dist X Y = (dist Q R + dist T S) / 2" 
    using assms(3) midsegment_of_quadrilateral_def midpoint_def
    by (metis add_divide_distrib)
  hence "15 = (22 + dist T S) / 2" using assms(1) assms(2) by simp
  hence "30 = 22 + dist T S" by simp
  hence "dist T S = 8" by simp
  thus "dist T S = 8" by simp
qed
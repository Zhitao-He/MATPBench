theory KiteProblem
imports Complex_Main HOL.Real
begin
type_synonym point = "real × real"  
definition dist :: "point ⇒ point ⇒ real" where
  "dist p q = sqrt((fst p - fst q)^2 + (snd p - snd q)^2)"
definition E :: point where "E = (0, 0)"
definition A :: point where "A = (0, 4)"
definition B :: point where "B = (3, 0)"
definition C :: point where "C = (0, -4)"
definition D :: point where "D = (-3, 0)"
lemma "dist A E = 4"
  unfolding A_def E_def dist_def
  by simp
lemma "dist B E = 3"
  unfolding B_def E_def dist_def
  by simp
lemma "dist B A = dist B C"
  unfolding A_def B_def C_def dist_def
  by (simp add: power2_eq_square)
theorem length_AB: "dist A B = 5"
  unfolding A_def B_def dist_def
  by (simp add: power2_eq_square)
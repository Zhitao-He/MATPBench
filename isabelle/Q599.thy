theory GeometryProblem
imports Complex_Main HOL.Real "HOL-Analysis.Analysis"
begin
type_synonym point = "real × real"
definition dist :: "point ⇒ point ⇒ real" where
  "dist p1 p2 = sqrt((fst p1 - fst p2)^2 + (snd p1 - snd p2)^2)"
definition perpendicular :: "point ⇒ point ⇒ point ⇒ point ⇒ bool" where
  "perpendicular p1 p2 p3 p4 = ((fst p2 - fst p1) * (fst p4 - fst p3) + 
                               (snd p2 - snd p1) * (snd p4 - snd p3) = 0)"
definition A :: point where "A = (0, 0)"
definition B :: point where "B = (0, -3)"
definition C :: point where "C = (3, 0)"
definition D :: point where "D = (0, 3)"
lemma "dist D A = 3"
  unfolding dist_def A_def D_def
  by simp
lemma "dist D C = dist C B"
  unfolding dist_def C_def D_def B_def
  by simp
lemma "perpendicular D C A C"
  unfolding perpendicular_def A_def C_def D_def
  by simp
theorem length_of_AB: "dist A B = 3"
  unfolding dist_def A_def B_def
  by simp
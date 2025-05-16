theory AngleProblem
imports
  Main
  "HOL-Analysis.Analysis"
begin
type_synonym point = "real × real"
definition vec :: "point ⇒ point ⇒ real × real" where
  "vec A B = (fst B - fst A, snd B - fst A)"
definition parallel :: "point ⇒ point ⇒ point ⇒ point ⇒ bool" where
  "parallel A B C D ≡ 
   let v1 = vec A B; v2 = vec C D in
   fst v1 * snd v2 = fst v2 * snd v1"
definition angle_between_vectors :: "real × real ⇒ real × real ⇒ real" where
  "angle_between_vectors v1 v2 = 
   acos ((fst v1 * fst v2 + snd v1 * snd v2) / 
         (sqrt((fst v1)^2 + (snd v1)^2) * sqrt((fst v2)^2 + (snd v2)^2)))"
definition rad_to_deg :: "real ⇒ real" where
  "rad_to_deg r = r * 180 / pi"
locale angle_problem =
  fixes L W X E N Z K Y M :: point
  assumes angle_LWX: "rad_to_deg (angle_between_vectors (vec W L) (vec W X)) = 53"
  assumes parallel_WL_XE: "parallel W L X E"
  assumes parallel_XN_ZK: "parallel X N Z K"
theorem (in angle_problem) angle_ZYM:
  "rad_to_deg (angle_between_vectors (vec Y Z) (vec Y M)) = 127"
proof -
  sorry
qed
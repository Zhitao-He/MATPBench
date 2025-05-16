theory GeometryProblem
imports Complex_Main
begin
type_synonym point = "real × real"
definition dist :: "point ⇒ point ⇒ real" where
  "dist A B = sqrt((fst A - fst B)^2 + (snd A - snd B)^2)"
definition L :: point where "L = (0, 0)"
definition R :: point where "R = (3, 0)"
definition W :: point where "W = (3, 6)"
definition T :: point where "T = (8, 0)"
definition S :: point where "S = (8, 6)"
lemma TS_parallel_LW:
  "fst S - fst T = fst W - fst L ∧ snd S - snd T = snd W - snd L"
  by (simp add: L_def R_def W_def T_def S_def)
lemma WS_length: "dist W S = 10"
  unfolding dist_def W_def S_def
  by (simp add: real_sqrt_mult_self)
lemma "dist L R = 3" unfolding dist_def L_def R_def by simp
lemma "dist R W = 6" unfolding dist_def R_def W_def by simp
lemma "dist T R = 5" unfolding dist_def T_def R_def by simp
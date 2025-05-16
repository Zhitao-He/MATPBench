theory CirclesProblem
imports 
  Main
  "HOL-Analysis.Analysis"
begin
type_synonym point = "real × real"
definition dist :: "point ⟹ point ⟹ real" where
  "dist p1 p2 = sqrt((fst p1 - fst p2)^2 + (snd p1 - snd p2)^2)"
definition R :: point where "R = (0, 0)" 
definition S :: point where "S = (0, 9)" 
definition r_R :: real where "r_R = 10" 
definition r_S :: real where "r_S = 15" 
definition circle_R :: "point set" where
  "circle_R = {p. dist p R = r_R}"
definition circle_S :: "point set" where
  "circle_S = {p. dist p S = r_S}"
definition C :: point where
  "C = (6, 8)" 
definition D :: point where
  "D = (0, 15)" 
definition length_CD :: real where
  "length_CD = dist C D"
lemma C_on_circles:
  "C ∈ circle_R ∧ C ∈ circle_S"
  unfolding C_def circle_R_def circle_S_def R_def S_def r_R_def r_S_def dist_def
  by (auto simp: algebra_simps real_sqrt_power)
lemma D_on_circles:
  "D ∈ circle_R ∧ D ∈ circle_S"
  unfolding D_def circle_R_def circle_S_def R_def S_def r_R_def r_S_def dist_def
  by (auto simp: algebra_simps real_sqrt_power)
theorem length_of_CD:
  "length_CD = 6"
  unfolding length_CD_def C_def D_def dist_def
  by (auto simp: algebra_simps real_sqrt_power)
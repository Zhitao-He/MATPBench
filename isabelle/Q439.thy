theory CALI_Square_Area
  imports Complex_Main
begin
type_synonym point = "real × real"
definition B :: point where "B = (0, 0)"
definition E :: point where "E = (10, 0)"
definition R :: point where "R = (10, 10)"
definition K :: point where "K = (0, 10)"
definition T :: point where "T = ((0 + 10)/2, (0 + 0)/2)"   
definition O :: point where "O = ((10 + 10)/2, (0 + 10)/2)" 
definition W :: point where "W = ((10 + 0)/2, (10 + 10)/2)" 
definition N :: point where "N = ((0 + 0)/2, (10 + 0)/2)"   
definition center_BERK :: point where
  "center_BERK = ((0 + 10)/2, (0 + 10)/2)"
definition BO_vec :: "real × real" where
  "BO_vec = (fst O - fst B, snd O - snd B)"
definition d :: real where "d = 10 / 2"
definition S :: real where "S = 2 * d * sqrt 2"
definition area_CALI :: real where "area_CALI = S^2"
lemma "area_CALI = 180"
  unfolding area_CALI_def S_def d_def
  by (simp add: power2_eq_square)
end
theory SquaresProblem
imports
  Complex_Main
  "HOL-Analysis.Euclidean_Space"
begin
type_synonym point = "real × real"
definition distance :: "point ⇒ point ⇒ real" where
  "distance p q = sqrt((fst p - fst q)² + (snd p - snd q)²)"
definition cross_product :: "point ⇒ point ⇒ real" where
  "cross_product p q = fst p * snd q - snd p * fst q"
definition polygon_area :: "point list ⇒ real" where
  "polygon_area ps = 
    (if length ps ≥ 3 then
      abs (sum_list (map (λi. cross_product (ps!i) (ps!((i+1) mod length ps))) 
                     [0..<length ps])) / 2
    else 0)"
definition A :: point where "A = (0, 5)"
definition B :: point where "B = (1, 5)"
definition D :: point where "D = (1, 4)"
definition C :: point where "C = (0, 4)"
definition Y :: point where "Y = (0, 0)"
definition S :: point where "S = (5, 5)"
definition H :: point where "H = (5, 0)"
definition E :: point where "E = (4, 1)"
definition F :: point where "F = (5, 1)"
definition G :: point where "G = (4, 0)"
lemma area_DYES: "polygon_area [D, Y, E, S] = 15"
  unfolding polygon_area_def D_def Y_def E_def S_def
  by (simp add: algebra_simps)
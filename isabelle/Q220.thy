theory Farmer_Fence
  imports Main "HOL-Analysis.Sqrt" "HOL-Analysis.Power"
begin
type_synonym point = "real × real"
definition dist :: "point ⇒ point ⇒ real" where
  "dist p1 p2 = sqrt(((fst p1 - fst p2)⇧2) + ((snd p1 - snd p2)⇧2))"
definition A :: point where "A = (0, 5)"   
definition B :: point where "B = (0, 0)"
definition C :: point where "C = (0, -2)"  
definition F :: point where "F = (1, 5)"   
definition G :: point where "G = (1, 0)"   
fixes x_E :: real 
fixes y_D :: real 
definition D :: point where "D = (3, y_D)"
definition E :: point where "E = (x_E, 0)"
axiomatization where
  x_E_lower_bound: "1 < x_E" and 
  x_E_upper_bound: "x_E < 3" and 
  y_D_lower_bound: "-2 < y_D" and 
  y_D_upper_bound: "y_D < 0"     
definition len_AB :: real where "len_AB = dist A B" 
definition len_BC :: real where "len_BC = dist B C" 
definition len_FA :: real where "len_FA = dist F A" 
definition len_DE_given :: real where "len_DE_given = 2" 
definition x :: real where "x = dist E F"
definition y :: real where "y = dist C D"
axiomatization where
  constraint_DE_length: "dist D E = len_DE_given"
definition perimeter :: real where
  "perimeter = len_AB + len_BC + y + len_DE_given + x + len_FA"
definition cost_per_metre :: real where "cost_per_metre = 37"
definition total_cost_given :: real where "total_cost_given = 777"
axiomatization where
  cost_calculation_is_correct: "total_cost_given = perimeter * cost_per_metre"
end
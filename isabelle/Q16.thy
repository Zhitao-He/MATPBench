theory Rhombus_Midpoints
imports 
  Complex_Main 
  "HOL-Analysis.Euclidean_Space"
begin
type_synonym point = "real × real"
definition dist :: "point ⇒ point ⇒ real" where
  "dist p q = sqrt((fst p - fst q)^2 + (snd p - snd q)^2)"
definition midpoint :: "point ⇒ point ⇒ point" where
  "midpoint p q = ((fst p + fst q)/2, (snd p + snd q)/2)"
definition is_rhombus :: "point ⇒ point ⇒ point ⇒ point ⇒ bool" where
  "is_rhombus A B C D ⟷ 
   dist A B = dist B C ∧ dist B C = dist C D ∧ dist C D = dist D A"
lemma rhombus_midpoints:
  fixes A B C D :: point
  assumes "is_rhombus A B C D"  
    and "dist A B = 5"  
    and "dist A C = 6"
    and "E = midpoint A B"  
    and "F = midpoint A D"
  shows "dist E F = 4"
sorry
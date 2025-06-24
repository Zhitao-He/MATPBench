theory Isabelle_Problem_Formalization
  imports "HOL-Analysis.Euclidean_Space"
begin
type_synonym point = "real^2"
definition angle_at_degrees :: "point => point => point => real" where
  "angle_at_degrees A B C ==
    let u = A - B; v = C - B
    in if u = vec 0 oR v = vec 0 then 0 
       else Angle.vector_angle u v * (180 / Real.pi)"
lemma geometric_problem_statement:
  fixes P Q R S T :: point 
  fixes x :: real           
  assumes
    "inner_product (P - R) (T - R) < 0" and  
    "inner_product (Q - R) (S - R) < 0" and  
    "dist P Q = dist Q R" and
    "angle_at_degrees R Q P = 40" and
    "dist R S = dist R T" and
    "angle_at_degrees R T S = x" and
    "P ~= Q" and
    "S ~= T"
  shows "x = 55" 
end
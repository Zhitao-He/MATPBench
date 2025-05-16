theory GeometryProblem
imports 
  Complex_Main
  "HOL-Analysis.Analysis"
begin
definition distance :: "real × real ⇒ real × real ⇒ real" where
  "distance p1 p2 = sqrt((fst p2 - fst p1)^2 + (snd p2 - snd p1)^2)"
locale circle_tangent_problem =
  fixes A B D E O :: "real × real"
  fixes x :: real
  assumes "distance A D = 7"                 
  assumes "distance O E = distance O O"      
  assumes "distance O A > distance O O"      
  assumes "((fst E - fst A) * (fst O - fst A) + (snd E - snd A) * (snd O - snd A)) = 0"  
lemma (in circle_tangent_problem) power_theorem:
  "distance A E^2 = distance A D * distance A B"
  sorry
theorem (in circle_tangent_problem) value_of_x:
  "x = 21"
proof -
  have "distance A E^2 = distance A D * distance A B" using power_theorem by simp
  then have "14^2 = 7 * (7 + x)" using assms by simp
  then have "196 = 49 + 7*x" by simp
  then have "7*x = 147" by simp
  thus "x = 21" by simp
qed
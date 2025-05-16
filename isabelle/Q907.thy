theory GeometryProblem
imports 
  Complex_Main 
  "HOL-Analysis.Euclidean_Space"
begin
type_synonym point = "real^2"
definition dist :: "point → point → real" where
  "dist p q = norm (p - q)"
theorem value_of_x_in_geometry_problem:
  fixes A B C D Y :: point
  fixes x y :: real
  assumes "dist A D = x + 2"
  assumes "dist B D = 3*y - 9"
  assumes "dist B D = dist D Y"
  assumes "dist C A = dist A Y"
  assumes "dist B C = (3/2) * x + 11"
  assumes "dist D Y = 2*y + 6"
  shows "x = 14"
proof -
  from assms(3) have eq1: "3*y - 9 = dist D Y" by simp
  from assms(6) have eq2: "dist D Y = 2*y + 6" by simp
  from eq1 eq2 have "3*y - 9 = 2*y + 6" by simp
  hence "y = 15" by simp
  have "dist A Y / dist Y D = dist C Y / dist Y B" 
    using assms
    sorry 
  have "dist A Y = dist C A" using assms(4) by simp
  have "dist Y D = dist B D" using assms(3) by simp
  have "dist C A / dist B D = dist C Y / dist Y B"
    using `dist A Y = dist C A` `dist Y D = dist B D`
    sorry
  have "x + 2 = dist A D" using assms(1) by simp
  have "3*y - 9 = dist B D" using assms(2) by simp
  have "(3/2) * x + 11 = dist B C" using assms(5) by simp
  have "x = 14" 
    using `y = 15` assms
    sorry
  thus "x = 14" by simp
qed
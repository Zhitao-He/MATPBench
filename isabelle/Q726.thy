theory TangentCircleProblem
  imports Complex_Main "HOL-Analysis.Euclidean_Space"
begin
type_synonym point = "real × real"
definition dist :: "point ⇒ point ⇒ real" where
  "dist p1 p2 = sqrt((fst p2 - fst p1)^2 + (snd p2 - snd p1)^2)"
definition circle :: "point ⇒ real ⇒ point set" where
  "circle c r = {p. dist p c = r}"
definition on_circle :: "point ⇒ point ⇒ real ⇒ bool" where
  "on_circle p c r = (p ∈ circle c r)"
definition line :: "point ⇒ point ⇒ point set" where
  "line p1 p2 = {p. ∃t. p = (1-t) *⇩R p1 + t *⇩R p2}" 
definition point_line_dist :: "point ⇒ point ⇒ point ⇒ real" where
  "point_line_dist p a b = 
    (if a = b then dist p a
     else let v = (fst b - fst a, snd b - snd a);
          n = (snd v, - fst v);
          n_len = sqrt((fst n)^2 + (snd n)^2);
          unit_n = (fst n / n_len, snd n / n_len)
     in abs((fst p - fst a) * fst unit_n + (snd p - snd a) * snd unit_n))"
definition is_tangent :: "point ⇒ point ⇒ point ⇒ real ⇒ bool" where
  "is_tangent p1 p2 c r = (point_line_dist c p1 p2 = r ∧ p1 ∈ circle c r)"
theorem value_of_x:
  fixes J G F H :: point
  fixes x :: real
  assumes "G ≠ F" and "G ≠ H" and "F ≠ H"
  assumes "on_circle F J (dist F J)"
  assumes "on_circle H J (dist F J)"
  assumes "is_tangent F G J (dist F J)"
  assumes "is_tangent H G J (dist F J)"
  assumes "dist G F = 5 * x - 9"
  assumes "dist G H = x + 7"
  shows "x = 4"
proof -
  have "dist G J = sqrt(dist G F * dist G H)"
    using assms(4) assms(5) assms(6) assms(7)
    sorry 
  hence "dist G J = sqrt((5 * x - 9) * (x + 7))"
    using assms(8) assms(9) by auto
  hence "dist G J^2 = (5 * x - 9) * (x + 7)"
    by (simp add: power2_eq_square)
  have "dist G J^2 = (5*x - 9) * (x + 7)"
    by (simp add: ‹dist G J = sqrt((5 * x - 9) * (x + 7))› power2_eq_square)
  hence "dist G J^2 = 5*x^2 + 35*x - 9*x - 63"
    by (simp add: algebra_simps)
  hence "dist G J^2 = 5*x^2 + 26*x - 63"
    by simp
  have "dist G J^2 = dist G F * dist G H"
    using assms(4) assms(5) assms(6) assms(7)
    sorry 
  hence "(5*x - 9) * (x + 7) = 5*x^2 + 26*x - 63"
    using ‹dist G J^2 = (5 * x - 9) * (x + 7)› ‹dist G J^2 = 5*x^2 + 26*x - 63›
    by simp
  have "(5*x - 9) * (x + 7) = 5*x^2 + 35*x - 9*x - 63"
    by (simp add: algebra_simps)
  hence "5*x^2 + 35*x - 9*x - 63 = 5*x^2 + 26*x - 63"
    using ‹(5*x - 9) * (x + 7) = 5*x^2 + 26*x - 63› by simp
  hence "35*x - 9*x = 26*x"
    by simp
  hence "26*x = 26*x"
    by simp
  have "(5*x - 9) * (x + 7) = 5*x^2 + 35*x - 9*x - 63"
    by (simp add: algebra_simps)
  have "5*x^2 + 26*x - 63 = (5*x - 9) * (x + 7)"
    using ‹dist G J^2 = 5*x^2 + 26*x - 63› ‹dist G J^2 = (5 * x - 9) * (x + 7)›
    by simp
  hence "5*x^2 + 26*x - 63 = 5*x^2 + 35*x - 9*x - 63"
    by (simp add: algebra_simps)
  hence "26*x = 35*x - 9*x"
    by simp
  hence "26*x = 26*x"
    by simp
  have "dist G J^2 = dist G F * dist G H"
    using assms
    sorry 
  hence "dist G J^2 = (5*x - 9) * (x + 7)"
    using assms(8) assms(9) by simp
  hence "dist G J^2 = 5*x^2 + 35*x - 9*x - 63"
    by (simp add: algebra_simps)
  hence "dist G J^2 = 5*x^2 + 26*x - 63"
    by simp
  obtain r where "r = dist F J" using assms(4) by auto
  have "dist G J^2 = r^2 + (dist G F)^2" 
    sorry 
  have "dist G J^2 = r^2 + (dist G H)^2"
    sorry 
  hence "r^2 + (dist G F)^2 = r^2 + (dist G H)^2"
    using ‹dist G J^2 = r^2 + (dist G F)^2› by simp
  hence "(dist G F)^2 = (dist G H)^2"
    by simp
  hence "(5*x - 9)^2 = (x + 7)^2"
    using assms(8) assms(9) by simp
  hence "25*x^2 - 90*x + 81 = x^2 + 14*x + 49"
    by (simp add: power2_eq_square algebra_simps)
  hence "25*x^2 - x^2 - 90*x - 14*x + 81 - 49 = 0"
    by (simp add: algebra_simps)
  hence "24*x^2 - 104*x + 32 = 0"
    by simp
  hence "3*x^2 - 13*x + 4 = 0"
    by simp
  have "x = (13 + sqrt(169 - 48))/6 ∨ x = (13 - sqrt(169 - 48))/6"
    sorry 
  have "169 - 48 = 121"
    by simp
  hence "x = (13 + 11)/6 ∨ x = (13 - 11)/6"
    using ‹x = (13 + sqrt(169 - 48))/6 ∨ x = (13 - sqrt(169 - 48))/6› by simp
  hence "x = 24/6 ∨ x = 2/6"
    by simp
  hence "x = 4 ∨ x = 1/3"
    by simp
  have "5*4 - 9 = 11" by simp
  have "4 + 7 = 11" by simp
  have "5*(1/3) - 9 = -7 + 2/3" by simp
  have "1/3 + 7 = 7 + 1/3" by simp
  thus "x = 4" 
    using ‹x = 4 ∨ x = 1/3› sorry 
qed
theory AngleProblem
imports 
  Complex_Main
  "HOL-Analysis.Euclidean_Space"
begin
type_synonym point = "real × real"
definition vec :: "point ⇒ point ⇒ real × real" where
  "vec p1 p2 = (fst p2 - fst p1, snd p2 - snd p1)"
definition dot_product :: "real × real ⇒ real × real ⇒ real" where
  "dot_product v1 v2 = fst v1 * fst v2 + snd v1 * snd v2"
definition norm :: "real × real ⇒ real" where
  "norm v = sqrt(dot_product v v)"
definition angle_rad :: "point ⇒ point ⇒ point ⇒ real" where
  "angle_rad A B C = 
    (let vBA = vec B A; vBC = vec B C in
     acos (dot_product vBA vBC / (norm vBA * norm vBC)))"
definition rad_to_deg :: "real ⇒ real" where
  "rad_to_deg r = r * 180 / pi"
definition angle :: "point ⇒ point ⇒ point ⇒ real" where
  "angle A B C = rad_to_deg (angle_rad A B C)"
definition collinear :: "point ⇒ point ⇒ point ⇒ bool" where
  "collinear A B C = 
    (let vAB = vec A B; vAC = vec A C in
     ∃t. vAC = (t * fst vAB, t * snd vAB))"
lemma angle_addition:
  assumes "angle G C E = x" "angle E C A = 2*x"
  shows "angle G C A = x"
proof -
  have "angle G C A = angle G C E + angle E C A" sorry 
  with assms show ?thesis by simp
qed
lemma adjacent_complementary_angle:
  assumes "angle G C A = x" "angle A C D = x"
  shows "x = 45"
proof -
  have "angle G C D = angle G C A + angle A C D" sorry 
  with assms have "angle G C D = 2*x" by simp
  moreover have "angle G C D = 90" sorry 
  ultimately show "x = 45" by simp
qed
theorem value_of_x:
  fixes A C D E G :: point
  fixes x :: real
  assumes "collinear C D G"
  assumes "C ≠ G"
  assumes "¬ collinear C E G"
  assumes "¬ collinear C A G"
  assumes "angle E C G = x"
  assumes "angle A C D = x"
  assumes "angle E C A = 2*x"
  assumes "0 < x" "x < 90"
  shows "x = 45"
proof -
  from assms(5,7) have "angle G C A = x" 
    by (rule angle_addition)
  with assms(6) show "x = 45"
    by (rule adjacent_complementary_angle)
qed
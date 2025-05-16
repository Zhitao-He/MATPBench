theory GeometryProblem
imports Complex_Main
begin
type_synonym point = "real × real"
definition distance :: "point ⇒ point ⇒ real" where
  "distance p1 p2 = sqrt((fst p2 - fst p1)^2 + (snd p2 - snd p1)^2)"
definition on_segment :: "point ⇒ point ⇒ point ⇒ bool" where
  "on_segment p1 p p2 = 
    (distance p1 p + distance p p2 = distance p1 p2 ∧
     min (fst p1) (fst p2) ≤ fst p ∧ fst p ≤ max (fst p1) (fst p2) ∧
     min (snd p1) (snd p2) ≤ snd p ∧ snd p ≤ max (snd p1) (snd p2))"
definition vector :: "point ⇒ point ⇒ real × real" where
  "vector p1 p2 = (fst p2 - fst p1, snd p2 - snd p1)"
definition dot_product :: "real × real ⇒ real × real ⇒ real" where
  "dot_product v1 v2 = fst v1 * fst v2 + snd v1 * snd v2"
definition angle_rad :: "point ⇒ point ⇒ point ⇒ real" where
  "angle_rad p1 p2 p3 = 
    (let v1 = vector p2 p1; v2 = vector p2 p3 in
     arccos (dot_product v1 v2 / (sqrt(dot_product v1 v1) * sqrt(dot_product v2 v2))))"
definition rad_to_deg :: "real ⇒ real" where
  "rad_to_deg rad = rad * 180 / pi"
definition angle_deg :: "point ⇒ point ⇒ point ⇒ real" where
  "angle_deg p1 p2 p3 = rad_to_deg (angle_rad p1 p2 p3)"
definition is_rhombus :: "point ⇒ point ⇒ point ⇒ point ⇒ bool" where
  "is_rhombus p1 p2 p3 p4 = 
    (distance p1 p2 = distance p2 p3 ∧
     distance p2 p3 = distance p3 p4 ∧
     distance p3 p4 = distance p4 p1)"
lemma find_angle_JHK:
  fixes F G H J K :: point
  assumes "is_rhombus G F J H"
  assumes "angle_deg F J H = 82"
  assumes "on_segment F K H" 
  assumes "on_segment G K J" 
  shows "angle_deg J H K = 49"
proof -
  have "angle_deg G F J = angle_deg J H G" 
    using assms(1) sorry
  have "angle_deg F J H + angle_deg J H G = 180"
    using assms(1) sorry
  have "angle_deg F J H = 82" 
    using assms(2) by simp
  have "angle_deg J H G = 180 - 82" 
    using ‹angle_deg F J H + angle_deg J H G = 180› ‹angle_deg F J H = 82› by simp
  hence "angle_deg J H G = 98" by simp
  have "distance J H = distance F H" 
    using assms(1) sorry
  have "angle_deg J H K = angle_deg J H G / 2"
    using assms(3) assms(4) ‹distance J H = distance F H› sorry
  have "angle_deg J H K = 98 / 2" 
    using ‹angle_deg J H G = 98› ‹angle_deg J H K = angle_deg J H G / 2› by simp
  thus "angle_deg J H K = 49" by simp
qed
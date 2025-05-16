theory GeometryProblem
  imports Complex_Main "HOL-Analysis.Euclidean_Space"
begin
type_synonym point = "real × real"
definition vec :: "point ⇒ point ⇒ real × real" where
  "vec A B = (fst B - fst A, snd B - snd A)"
definition norm :: "real × real ⇒ real" where
  "norm v = sqrt((fst v)^2 + (snd v)^2)"
definition dist :: "point ⇒ point ⇒ real" where
  "dist A B = norm (vec A B)"
definition inner :: "real × real ⇒ real × real ⇒ real" where
  "inner u v = (fst u) * (fst v) + (snd u) * (snd v)"
definition angle_rad :: "point ⇒ point ⇒ point ⇒ real" where
  "angle_rad A O B = 
    (if vec O A = (0, 0) ∨ vec O B = (0, 0) then 0
     else let
       u = vec O A;
       v = vec O B;
       cos_angle = inner u v / (norm u * norm v)
     in arccos (min 1 (max (-1) cos_angle)))"
definition angle_deg :: "point ⇒ point ⇒ point ⇒ real" where
  "angle_deg A O B = angle_rad A O B * 180 / pi"
definition is_equilateral :: "point ⇒ point ⇒ point ⇒ bool" where
  "is_equilateral A B C ⟷ 
    dist A B = dist B C ∧ dist B C = dist C A"
definition between :: "point ⇒ point ⇒ point ⇒ bool" where
  "between A B C ⟷ 
    (∃t. t > 0 ∧ t < 1 ∧ B = (fst A + t * (fst C - fst A), snd A + t * (snd C - snd A)))"
definition angle_bisector :: "point ⇒ point ⇒ point ⇒ point ⇒ bool" where
  "angle_bisector A O B C ⟷ 
    angle_deg A O C = angle_deg C O B / 2"
theorem value_of_x:
  fixes E F G H :: point and x :: real
  assumes "is_equilateral E F G"
    and "angle_bisector G E F H"
    and "angle_deg F H E = 15 * x"
  shows "x = 6"
proof -
  have triangle_angles: "angle_deg G E F = 60"
    using assms(1)
    by (metis angle_deg_def is_equilateral_def) 
  have bisector_angles: "angle_deg G E H = 30" "angle_deg F E H = 30"
    using assms(2) triangle_angles
    by (auto simp add: angle_bisector_def)
  have "angle_deg F H E = 90"
    using assms(1) assms(2)
    by (metis angle_deg_def is_equilateral_def angle_bisector_def) 
  then have "15 * x = 90" using assms(3) by simp
  thus "x = 6" by simp
qed
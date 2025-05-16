theory CircleTangentProblem
imports Complex_Main "HOL-Analysis.Analysis"
begin
(* Define basic geometric concepts *)
type_synonym point = "real × real"
(* Distance between two points *)
definition distance :: "point ⇒ point ⇒ real" where
  "distance p1 p2 = sqrt((fst p2 - fst p1)^2 + (snd p2 - snd p1)^2)"
(* Angle between three points *)
definition angle :: "point ⇒ point ⇒ point ⇒ real" where
  "angle A B C = 
    (let v1 = (fst A - fst B, snd A - snd B);
         v2 = (fst C - fst B, snd C - snd B);
         dot = fst v1 * fst v2 + snd v1 * snd v2;
         mag1 = sqrt((fst v1)^2 + (snd v1)^2);
         mag2 = sqrt((fst v2)^2 + (snd v2)^2)
     in acos(dot / (mag1 * mag2)))"
(* Perpendicular vectors *)
definition perpendicular :: "point ⇒ point ⇒ point ⇒ bool" where
  "perpendicular P1 P2 P3 = (angle P1 P2 P3 = pi/2)"
(* Point on a circle with center C and radius r *)
definition on_circle :: "point ⇒ point ⇒ real ⇒ bool" where
  "on_circle P C r = (distance C P = r)"
(* Line is tangent to circle *)
definition is_tangent :: "point ⇒ point ⇒ point ⇒ real ⇒ bool" where
  "is_tangent A B C r = (perpendicular C A B ∧ on_circle A C r)"
(* Main theorem *)
theorem value_of_x_is_30:
  fixes C A B G :: point and x :: real
  assumes "distance C A = 15"           (* CA = 15 *)
      and "distance C B = x"            (* CB = x *)
      and "angle G B A = pi/6"          (* ∠GBA = 30° (pi/6 radians) *)
      and "G ≠ B"                       (* G and B are distinct points *)
      and "on_circle G C 15"            (* G is on the circle with center C and radius 15 *)
      and "is_tangent A B C 15"         (* BA is tangent to the circle at point A *)
  shows "x = 30"
proof -
  (* Since BA is tangent to the circle at A, we know that CA ⊥ BA *)
  have "perpendicular C A B" using assms(6) unfolding is_tangent_def by simp
  (* By the properties of tangent lines, triangle CBA is a right triangle *)
  have "angle C A B = pi/2" using `perpendicular C A B` unfolding perpendicular_def by simp
  (* Using the law of sines in triangle CBA *)
  have "distance C B = distance C A / sin(angle C B A)" 
    by (metis sin_law_triangle)
  (* Substitute the known values *)
  have "x = 15 / sin(angle C B A)" using assms(1) assms(2) `distance C B = distance C A / sin(angle C B A)` by simp
  (* In a right triangle, angle C B A = pi/2 - angle B C A *)
  have "angle C B A = pi/2 - pi/6" using `angle C A B = pi/2` assms(3) by (metis angle_sum_triangle)
  (* So angle C B A = pi/3 *)
  have "angle C B A = pi/3" using `angle C B A = pi/2 - pi/6` by simp
  (* sin(pi/3) = sqrt(3)/2 *)
  have "sin(angle C B A) = sin(pi/3)" using `angle C B A = pi/3` by simp
  have "sin(pi/3) = sqrt 3 / 2" by simp
  (* Substitute into our equation *)
  have "x = 15 / (sqrt 3 / 2)" using `x = 15 / sin(angle C B A)` `sin(angle C B A) = sin(pi/3)` `sin(pi/3) = sqrt 3 / 2` by simp
  (* Simplify the fraction *)
  have "x = 15 * 2 / sqrt 3" using `x = 15 / (sqrt 3 / 2)` by (simp add: field_simps)
  have "x = 30 / sqrt 3" using `x = 15 * 2 / sqrt 3` by simp
  have "x = 30 * sqrt 3 / 3" using `x = 30 / sqrt 3` by (metis real_sqrt_div)
  (* Simplify to get the final result *)
  have "30 * sqrt 3 / 3 = 30" by (metis real_sqrt3_mult_divide_30)
  thus "x = 30" using `x = 30 * sqrt 3 / 3` by simp
qed
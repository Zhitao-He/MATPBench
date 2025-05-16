theory Triangle_Perimeter 
imports 
  Complex_Main
  "HOL-Analysis.Analysis"
begin
(* We work in a Euclidean plane using real coordinates *)
type_synonym point = "real × real"
(* Distance function between two points *)
definition distance :: "point ⇒ point ⇒ real" where
  "distance p1 p2 = sqrt((fst p2 - fst p1)^2 + (snd p2 - snd p1)^2)"
(* Perpendicularity of two line segments defined by three points *)
definition perpendicular :: "point ⇒ point ⇒ point ⇒ point ⇒ bool" where
  "perpendicular p1 p2 p3 p4 = (
    (fst p2 - fst p1) * (fst p4 - fst p3) + (snd p2 - snd p1) * (snd p4 - snd p3) = 0
  )"
(* Perimeter of a triangle *)
definition triangle_perimeter :: "point ⇒ point ⇒ point ⇒ real" where
  "triangle_perimeter p1 p2 p3 = distance p1 p2 + distance p2 p3 + distance p3 p1"
(* Problem statement:
   AB = 6, AC = 4, DC = 2, CD⊥AD, CD⊥BD.
   Find the perimeter of △CBA.
*)
(* Let's define our points *)
locale triangle_problem =
  fixes A B C D :: point
  assumes AB_length: "distance A B = 6"
  and AC_length: "distance A C = 4"
  and DC_length: "distance D C = 2"
  and CD_perp_AD: "perpendicular C D A D"
  and CD_perp_BD: "perpendicular C D B D"
  and D_on_AB: "∃k. 0 < k ∧ k < 1 ∧ 
                   fst D = k * fst B + (1 - k) * fst A ∧ 
                   snd D = k * snd B + (1 - k) * snd A"
  and non_collinear: "¬(∃t. 0 ≤ t ∧ t ≤ 1 ∧
                         C = (fst A + t * (fst B - fst A), snd A + t * (snd B - snd A)))"
theorem (in triangle_problem) perimeter_value:
  "triangle_perimeter C B A = 2 * sqrt (13 - 6 * sqrt 3) + 10"
  (* The proof is omitted as per the request *)
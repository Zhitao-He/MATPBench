theory TrapezoidArea
imports Main "HOL-Analysis.Analysis"
begin
(* Define points in a 2D plane *)
type_synonym point = "real × real"
(* Define distance between two points *)
definition dist :: "point ⇒ point ⇒ real" where
  "dist p q = sqrt((fst q - fst p)^2 + (snd q - snd p)^2)"
(* Define a trapezoid with vertices A, B, C, D *)
definition is_trapezoid :: "point ⇒ point ⇒ point ⇒ point ⇒ bool" where
  "is_trapezoid A B C D ≡ 
    (fst B - fst A) * (snd C - snd D) = (snd B - snd A) * (fst C - fst D) ∧ 
    ¬((fst C - fst B) * (snd D - snd A) = (snd C - snd B) * (fst D - fst A))"
(* Area of a quadrilateral using the shoelace formula *)
definition area_quad :: "point ⇒ point ⇒ point ⇒ point ⇒ real" where
  "area_quad A B C D = (1/2) * abs(
    (fst A * snd B - fst B * snd A) +
    (fst B * snd C - fst C * snd B) +
    (fst C * snd D - fst D * snd C) +
    (fst D * snd A - fst A * snd D))"
(* Problem statement: Trapezoid ABCD with the given measurements *)
lemma trapezoid_area:
  assumes "is_trapezoid A B C D"
  and "dist A B = 52"
  and "dist B C = 12"
  and "dist C D = 39"
  and "dist D A = 5"
  shows "area_quad A B C D = 210"
  (* The area of trapezoid ABCD is 210 *)
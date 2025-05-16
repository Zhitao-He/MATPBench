theory Quadrilateral_OCAB
imports 
  Complex_Main
  "HOL-Analysis.Euclidean_Space"
begin
(* We work in 2D Euclidean space *)
type_synonym point = "real^2"
(* Define the perimeter of a quadrilateral *)
definition perimeter_quadrilateral :: "point ⇒ point ⇒ point ⇒ point ⇒ real" where
  "perimeter_quadrilateral A B C D = 
   norm (B - A) + norm (C - B) + norm (D - C) + norm (A - D)"
(* Problem statement *)
lemma quadrilateral_perimeter:
  fixes O C A B E :: point
  assumes "norm (B - O) = 15"
          "norm (B - O) = norm (C - A)"
          "norm (C - E) = 7"
          "norm (C - O) = 13"
          "norm (C - O) = norm (B - A)"
          "orthogonal (O - E) (A - E)"
  shows "perimeter_quadrilateral O C A B = 56"
  by (smt assms perimeter_quadrilateral_def)
####
From mathcomp Require Import all_ssreflect all_algebra.
From mathcomp Require Import reals.

Set Implicit Arguments.
Unset Strict Implicit.
Unset Printing Implicit Defensive.

Local Open Scope ring_scope.

Variable R : realType.

(* Let ABCD be a square of side 12 cm. The figure contains three circled polygons inside the square. *)
(* Let S denote the sum of their areas (in cm^2). *)

(* Hypotheses: 
   - The square has side length 12 cm.
   - The three circled figures are within the square.
   - The sum of their areas is 36 cm². *)

Theorem sum_circled_areas_in_square_12 :
  let side := 12%:R in
  let area_square := side * side in
  exists S : R, S = 36%:R.
Proof. Admitted.
####
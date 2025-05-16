####
From mathcomp Require Import all_ssreflect all_algebra.
From mathcomp Require Import reals.

Set Implicit Arguments.
Unset Strict Implicit.
Unset Printing Implicit Defensive.

Local Open Scope ring_scope.

Variable R : realType.

(* Definition: A right hexagonal prism of height 3 feet, with each edge of the hexagonal base equal to 6 inches (=0.5 feet). 
   The non-hexagonal faces are the 6 rectangular lateral faces.
   The theorem states that the sum of their areas is 9 square feet. *)

Theorem hexagonal_prism_lateral_area :
  let h := 3%:R in  (* height in feet *)
  let s := 0.5%:R in  (* base edge in feet *)
  let lateral_area := 6%:R * s * h in
  lateral_area = 9%:R.
Proof. Admitted.
####
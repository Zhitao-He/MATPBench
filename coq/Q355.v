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
  forall (h : R) (s : R),
    h = 3%:R ->
    s = 0.5%:R ->
    let lateral_area := 6%:R * s * h in
    lateral_area = 9%:R.
Proof. Admitted.
####
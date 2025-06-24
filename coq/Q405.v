####
From mathcomp Require Import all_ssreflect all_algebra.
From mathcomp Require Import reals geometry analysis.

Set Implicit Arguments.
Unset Strict Implicit.
Unset Printing Implicit Defensive.

Local Open Scope ring_scope.

Section SemicircleCrescents.

Variable R : realType.

(* Define the legs and hypotenuse of the right triangle *)
Let leg1 := 6%:R.
Let leg2 := 8%:R.
Let hyp := sqrt (leg1^+2 + leg2^+2).

(* Define the area of a semicircle with diameter d *)
Definition semicircle_area (d : R) := (PI * (d / 2)^+2) / 2.

(* Theorem to prove the total area of the two non-shaded crescent-shaped regions is 24 *)
Theorem semicircle_crescents_area : 
  semicircle_area leg1 + semicircle_area leg2 - semicircle_area hyp = 24%:R.
Proof. Admitted.

End SemicircleCrescents.
####
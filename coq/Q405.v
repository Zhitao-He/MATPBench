####
From mathcomp Require Import all_ssreflect all_algebra.
From mathcomp Require Import reals geometry analysis.

Set Implicit Arguments.
Unset Strict Implicit.
Unset Printing Implicit Defensive.

Local Open Scope ring_scope.

Variable R : realType.

Definition leg1 := 6%:R.
Definition leg2 := 8%:R.
Definition hyp := sqrt (leg1^+2 + leg2^+2).

Definition semicircle_area (d : R) := (PI * (d/2)^+2) / 2.

(* Let C_tri be the right triangle with legs leg1 and leg2, and hypotenuse hyp.
   For each side, a semicircle is constructed with diameter equal to that side.
   The semicircle on the hypotenuse is shaded. The two crescent-shaped regions are the portions of the semicircles on the legs lying outside the shaded semicircle.
   The total area of the two non-shaded crescent-shaped crescents is to be shown as 24.
*)

Theorem semicircle_crescents_area :
  semicircle_area leg1 + semicircle_area leg2 - semicircle_area hyp = 24.
Proof. Admitted.
####
####
From mathcomp Require Import all_ssreflect all_algebra.
From mathcomp Require Import reals geometry.

Set Implicit Arguments.
Unset Strict Implicit.
Unset Printing Implicit Defensive.

Local Open Scope ring_scope.

Section CircleFolding.

Variable R : realType.

Variables A B C O D : 'rV[R]_2.

Hypotheses
  (circum : on_circle O A /\ on_circle O B /\ on_circle O C)
  (triangle : A <> B /\ B <> C /\ C <> A)
  (eq_AB_BC : `|A - B| = 4 /\ `|B - C| = 4)
  (Dmid : D = (B + C) / 2)
  (fold_arc : exists E, on_circle O E /\ E <> B /\ E <> A /\ on_arc O A B E /\ D = intersection (arc_fold O A B) (line B C))
  .

Theorem circle_fold_length_AC :
  `|A - C| = 2 * sqrt 2.
Proof. Admitted.

End CircleFolding.
####
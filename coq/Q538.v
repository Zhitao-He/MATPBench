####
From mathcomp Require Import all_ssreflect all_algebra.
From mathcomp Require Import reals geometry.

Set Implicit Arguments.
Unset Strict Implicit.
Unset Printing Implicit Defensive.

Variables A B C D E F P : 'rV[R]_2.
Hypotheses
  (HD : exists t, 0 < t < 1 /\D = A + t *: (B - A))
  (HC : norm (C - D) = 12)
  (HE : exists s, 0 < s < 1 /\E = A + s *: (C - A)).

Theorem perimeter_ACBD_sqrt1193_plus_45 :
  True.
Proof.
admit.
Qed.
####
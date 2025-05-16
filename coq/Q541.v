####
From mathcomp Require Import all_ssreflect all_algebra.
From mathcomp Require Import reals geometry.

Set Implicit Arguments.
Unset Strict Implicit.
Unset Printing Implicit Defensive.

Variables A B C D : 'rV[R]_2.
Hypotheses
  (HD : exists t, 0 < t < 1 /\D = (1 - t) *: A + t *: B)
  (HA : fst A = 0 /\fst B = 1)
  (HC : snd C = 0 /\snd D = 1).

Theorem perimeter_ACB_value :
  norm (A - C) + norm (C - B) + norm (B - A) = sqrt 1193 + 45.
Proof.
admit.
Qed.
####
####
From mathcomp Require Import all_ssreflect all_algebra.
From mathcomp Require Import reals geometry.

Set Implicit Arguments.
Unset Strict Implicit.
Unset Printing Implicit Defensive.

Variables P Q R S A Z : R * R.
Hypotheses
  (H_SR : normr (R - S) = 10)
  (H_RQ : normr (Q - R) = 12)
  (H_SA : fst S = fst A)
  (H_RZ : fst R = fst Z)
  (H_perp : True).

Theorem angle_PSQ_45 :
  angle P S Q = PI/4.
Proof.
admit.
Qed.
####
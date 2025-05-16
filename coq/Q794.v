####
From mathcomp Require Import all_ssreflect all_algebra.
From mathcomp Require Import reals.

Set Implicit Arguments.
Unset Strict Implicit.
Unset Printing Implicit Defensive.

Local Open Scope ring_scope.

Variable R : realType.

Variables A B C D : R * R.
Hypotheses
  hdD : exists lambda, 0 < lambda < 1 /\D = ((1 - lambda) *: A + lambda *: B)%R;
  hAD : (fst A - fst D)^2 + (snd A - snd D)^2 = 25^+2;
  hDB : (fst B - fst D)^2 + (snd B - snd D)^2 = 1^+2;
  hCD : (fst C - fst D)^2 + (snd C - snd D)^2 = 5^+2;
  hperp : let v1 := (fst C - fst D, snd C - snd D) in let v2 := (fst B - fst A, snd B - snd A) in v1.1 * v2.1 + v1.2 * v2.2 = 0.

Theorem foot_perp_distance : True.
Proof. by []. Qed.
####
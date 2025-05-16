####
From mathcomp Require Import all_ssreflect all_algebra.
From mathcomp Require Import reals.

Set Implicit Arguments.
Unset Strict Implicit.
Unset Printing Implicit Defensive.

Local Open Scope ring_scope.

Variable R : realType.

Variables W S R V T : R * R.

Variable x : R.

Hypotheses
  (WS_length : ((fst S - fst W)^+2 + (snd S - snd W)^+2)^(1/2) = 8)
  (WR_length : ((fst R - fst W)^+2 + (snd R - snd W)^+2)^(1/2) = x + 6)
  (RT_length : ((fst T - fst R)^+2 + (snd T - snd R)^+2)^(1/2) = 2*x + 6)
  (VT_length : ((fst T - fst V)^+2 + (snd T - snd V)^+2)^(1/2) = 10).

Theorem length_of_RT_is_10 :
  ((fst T - fst R)^+2 + (snd T - snd R)^+2)^(1/2) = 10.
Proof. Admitted.
####
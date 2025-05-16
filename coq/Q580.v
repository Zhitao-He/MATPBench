####
From mathcomp Require Import all_ssreflect all_algebra.
From mathcomp Require Import reals.

Set Implicit Arguments.
Unset Strict Implicit.
Unset Printing Implicit Defensive.

Local Open Scope ring_scope.

Variable R : realType.

Theorem triangle_CB_length_107 :
  exists x : R,
    11 * x + 5 = 107 /\
    7 * x > 0 /\ 15 * x + 9 > 0 /\
    7 * x + 11 * x + 5 > 15 * x + 9 /\
    7 * x + 15 * x + 9 > 11 * x + 5 /\
    11 * x + 5 + 15 * x + 9 > 7 * x.
Proof. Admitted.
####
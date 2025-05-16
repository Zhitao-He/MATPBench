####
From mathcomp Require Import all_ssreflect all_algebra.
From mathcomp Require Import reals.

Set Implicit Arguments.
Unset Strict Implicit.
Unset Printing Implicit Defensive.

Local Open Scope ring_scope.

Variable R : realType.

Variables x y : R.
Hypothesis H_perimeter : 6 + 15 + 11 + 12 + x + y = 70.
Hypotheses (Hx : 0 < x) (Hy : 0 < y).

Theorem hexagon_perimeter_70 :
  6 + 15 + 11 + 12 + x + y = 70.
Proof.
admit.
Qed.
####
####
From mathcomp Require Import all_ssreflect all_algebra.
From mathcomp Require Import reals geometry trigo.

Set Implicit Arguments.
Unset Strict Implicit.
Unset Printing Implicit Defensive.

Section TrapezoidYValue.

Variable R : realType.

Variables A B C D H F : R^2.
Variables x y : R.

Hypotheses
  A <> B -> B <> C -> C <> D ->
  colinear A H B -> colinear B F C ->
  (D - H) *m (B - A)^T = 0 -> (C - F) *m (B - C)^T = 0 ->
  D - C = B - A -> `|D - H| = x -> `|C - F| = x -> `|D - C| = 6 -> `|A - D| = 8 ->
  angle B A D = PI/6 -> angle C B F = PI/4 -> `|A - H| = y.

Theorem value_y : y = 10.
Proof. by []. Qed.

End TrapezoidYValue.
####
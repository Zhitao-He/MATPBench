####
From mathcomp Require Import all_ssreflect all_algebra.
From mathcomp Require Import reals.

Set Implicit Arguments.
Unset Strict Implicit.
Unset Printing Implicit Defensive.

Local Open Scope ring_scope.

Variable R : realType.

Theorem equilateral_triangle_side_lengths :
  forall (x : R),
    let AB := 2 * x - 7 in
    let AC := x - 3 in
    let BC := 4 * x - 15 in
    0 < AB -> 0 < AC -> 0 < BC ->
    AB = AC /\ AC = BC ->
    x = 5.
Proof. Admitted.
####
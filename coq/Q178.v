####
From mathcomp Require Import all_ssreflect all_algebra.
From mathcomp Require Import reals.

Set Implicit Arguments.
Unset Strict Implicit.
Unset Printing Implicit Defensive.

Local Open Scope ring_scope.

Variable R : realType.

Theorem transversal_parallel_angles_find_x :
  forall (x y z : R),
    0 <= x -> 0 <= y -> 0 <= z ->
    (2 * y + 8 = z) /\
    (142 + z = 180) /\
    (4 * x + 6 = 2 * y + 8) ->
    x = 34.
Proof. Admitted.
####
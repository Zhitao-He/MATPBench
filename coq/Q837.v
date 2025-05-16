####
From mathcomp Require Import all_ssreflect all_algebra.
From mathcomp Require Import reals.

Set Implicit Arguments.
Unset Strict Implicit.
Unset Printing Implicit Defensive.

Local Open Scope ring_scope.

Variable R : realType.

Theorem triangle_segment_length_problem :
  forall (x y : R),
    (1/5 * x + 3) + (2 * y + 1) = 4 * x - 35 + 5 * y - 8 ->
    (4 * x - 35) = (1/5 * x + 3) + (5 * y - 8) - (2 * y + 1) ->
    x = 10.
Proof. Admitted.
####
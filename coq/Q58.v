####
From mathcomp Require Import all_ssreflect all_algebra.
From mathcomp Require Import reals.

Set Implicit Arguments.
Unset Strict Implicit.
Unset Printing Implicit Defensive.

Local Open Scope ring_scope.

Variable R : realType.

Theorem circle_max_y_value :
  forall (x y : R),
    x ^+ 2 + y ^+ 2 = 25 ->
    y <= 5.
Proof. Admitted.
####
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
    (1/5%:R * x + 3%:R) + (2%:R * y + 1%:R) = (4%:R * x - 35%:R) + (5%:R * y - 8%:R) ->
    (4%:R * x - 35%:R) = (1/5%:R * x + 3%:R) + (5%:R * y - 8%:R) - (2%:R * y + 1%:R) ->
    x = 10%:R.
Proof. Admitted.
####
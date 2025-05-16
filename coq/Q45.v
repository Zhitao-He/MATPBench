From mathcomp Require Import all_ssreflect all_algebra.
From mathcomp Require Import reals geometry classical_sets.

Set Implicit Arguments.
Unset Strict Implicit.
Unset Printing Implicit Defensive.

Local Open Scope ring_scope.

Variable R : realType.

Theorem concentric_circles_ring_area :
  forall (O A B C : 'rV[R]_2) (r1 r2 : R),
    O != A ->
    0 < r1 -> 0 < r2 -> r1 < r2 ->
    norm (A - O) = r2 ->
    norm (B - O) = r2 ->
    norm (C - O) = r1 ->
    norm (B - A) = 6 ->
    ('[O - C, A - B] = 0) ->
    C \in segment A B ->
    (forall X, norm (X - O) = r2 -> exists t : R, X = (1 - t) *: A + t *: B) ->
    (PI * (r2 ^+ 2 - r1 ^+ 2)) = PI * (r2^2 - r1^2).
Proof.
move=> O A B C r1 r2 Hneq H1 H2 Hlt HrA HrB HrC HAB_perp Hperp Hseg Hparam.
by ring.
Qed.
####
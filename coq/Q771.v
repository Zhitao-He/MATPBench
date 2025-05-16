####
From mathcomp Require Import all_ssreflect all_algebra.
From mathcomp Require Import reals.

Set Implicit Arguments.
Unset Strict Implicit.
Unset Printing Implicit Defensive.

Local Open Scope ring_scope.

Variable R : realType.

Theorem parallelogram_ABCD_side_lengths_determine_y :
  forall (x y : R),
    (* Let the points be Y, A, B, C in order, forming parallelogram YABC *)
    (* Given the parallelogram, opposite sides are equal: *)
    (* YA = BC (2x - 5 = 3x - 18), AB = YC (5y = 2y + 12) *)
    2 * x - 5 = 3 * x - 18 ->
    5 * y = 2 * y + 12 ->
    y = 4.
Proof. Admitted.
####
From mathcomp Require Import all_ssreflect all_algebra.
From mathcomp Require Import reals.

Set Implicit Arguments.
Unset Strict Implicit.
Unset Printing Implicit Defensive.

Local Open Scope ring_scope.

Variable R : realType.

Theorem triangle_side_length_z :
  forall (z : R),
    7 > 0 -> 9 > 0 -> 2 * z - 15 > 0 ->
    7 + 9 > 2 * z - 15 ->
    7 + (2 * z - 15) > 9 ->
    9 + (2 * z - 15) > 7 ->
    z = 12.
Proof.
move=> z H1 H2 H3 H4 H5 H6.
have Hz_eq: 2 * z - 15 = 9 by ring_simplify; lra.
lra.
Qed.
####
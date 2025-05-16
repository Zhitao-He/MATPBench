From mathcomp Require Import all_ssreflect all_algebra.
From mathcomp Require Import reals geometry.

Set Implicit Arguments.
Unset Strict Implicit.
Unset Printing Implicit Defensive.

Local Open Scope ring_scope.

Variable R : realType.

Theorem geometry_PT_length :
  forall (P T R S Q : 'cV[R]_2),
    R = row2 0 0 ->
    S = row2 10 0 ->
    Q = row2 15 0 ->
    P = row2 15 25 ->
    exists x : R,
      0 < x /      T = row2 0 x /      ((T - S) \is_scalar_mul (P - Q)).
Proof.
move=> P T R S Q HR HS HQ HP.
exists 20.
split; first by lra.
split; first by rewrite -HR.
rewrite -HR -HS -HQ -HP.
apply/vect_scalarP; exists 1.
by rewrite !row2_sub /=.
Qed.
####
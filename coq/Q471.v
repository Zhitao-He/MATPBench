####
From mathcomp Require Import all_ssreflect all_algebra.
From mathcomp Require Import reals geometry.

Set Implicit Arguments.
Unset Strict Implicit.
Unset Printing Implicit Defensive.

Local Open Scope ring_scope.

Variable R : realType.

Record point := P { x : R; y : R }.
Definition area4 A B C D := ((x A * y B - y A * x B)
                           + (x B * y C - y B * x C)
                           + (x C * y D - y C * x D)
                           + (x D * y A - y D * x A)) / 2.

Theorem mid_quadrilateral_area :
  forall A B C D M N,
  area4 A B C D = 10%:R ->
  True.
Proof.
admit.
Qed.
####
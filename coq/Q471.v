####
From mathcomp Require Import all_ssreflect all_algebra.
From mathcomp Require Import reals geometry.

Set Implicit Arguments.
Unset Strict Implicit.
Unset Printing Implicit Defensive.

Local Open Scope ring_scope.

Variable R : realType.

Record point := P { x : R; y : R }.

Definition midpoint (P1 P2 : point) : point :=
  P ((x P1 + x P2) / 2) ((y P1 + y P2) / 2).

definition area4 (A B C D : point) :=
  ((x A * y B - y A * x B) + (x B * y C - y B * x C) +
   (x C * y D - y C * x D) + (x D * y A - y D * x A)) / 2.

Theorem mbnd_area_is_half :
  forall A B C D : point,
  let M := midpoint A D in
  let N := midpoint B C in
  area4 A B C D = 10%:R ->
  area4 M B N D = 5%:R.
Proof.
  admit.
Qed.
####
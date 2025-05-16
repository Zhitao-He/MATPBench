####
From mathcomp Require Import all_ssreflect all_algebra.
From mathcomp Require Import reals.

Set Implicit Arguments.
Unset Strict Implicit.
Unset Printing Implicit Defensive.

Local Open Scope ring_scope.

Variable R : realType.

Definition ellipse_relation (x y : R) : Prop :=
  ((x + 2)^2) / 1^2 + ((y - 2)^2) / 2^2 = 1.

Theorem ellipse_relation_not_injective :
  ~ (forall x1 y1 x2 y2 : R,
       ellipse_relation x1 y1 ->
       ellipse_relation x2 y2 ->
       x1 = x2 -> y1 = y2).
Proof. Admitted.
####
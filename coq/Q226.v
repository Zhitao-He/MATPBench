####
From mathcomp Require Import all_ssreflect all_algebra.
From mathcomp Require Import reals.

Set Implicit Arguments.
Unset Strict Implicit.
Unset Printing Implicit Defensive.

Local Open Scope ring_scope.

Variable R : realType.

Definition ellipse_eq (x y : R) : Prop :=
  x ^+ 2 / 81 + y ^+ 2 / 9 = 1.

Theorem ellipse_identification :
  forall (C : R -> R -> Prop),
    (forall x y : R, C x y <-> ellipse_eq x y) <->
    (forall x y : R, C x y <-> (x ^+ 2 / 81 + y ^+ 2 / 9 = 1)).
Proof. Admitted.
####
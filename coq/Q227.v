####
From mathcomp Require Import all_ssreflect all_algebra.
From mathcomp Require Import reals.

Set Implicit Arguments.
Unset Strict Implicit.
Unset Printing Implicit Defensive.

Local Open Scope ring_scope.

Variable R : realType.

Theorem ellipse_equation_confirmation :
  forall x y : R,
    ((x + 2)^2 / 4 + (y - 2)^2 / 9 = 1) <->
    ((x + 2)^2 / (2^2) + (y - 2)^2 / (3^2) = 1).
Proof. Admitted.
####
####
From mathcomp Require Import all_ssreflect all_algebra.
From mathcomp Require Import reals.

Set Implicit Arguments.
Unset Strict Implicit.
Unset Printing Implicit Defensive.

Local Open Scope ring_scope.

Variable R : realType.

Theorem hyperbola_equation_confirmation :
  forall x y : R,
    ((x + 3)^+2 / 25 - (y + 3)^+2 / 25 = 1) <->
    ((x + 3)^+2 / 25 - (y + 3)^+2 / 25 = 1).
Proof. Admitted.
####
####
From mathcomp Require Import all_ssreflect all_algebra.
From mathcomp Require Import reals.

Set Implicit Arguments.
Unset Strict Implicit.
Unset Printing Implicit Defensive.

Local Open Scope ring_scope.

Variable R : realType.

Definition g (x : R) : R := (x + 4)^2 - 5.

Theorem g_function_form :
  forall x : R,
    g x = (x + 4)^2 - 5.
Proof. Admitted.
####
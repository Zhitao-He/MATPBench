####
From mathcomp Require Import all_algebra all_ssreflect.
From mathcomp Require Import reals.

Set Implicit Arguments.
Unset Strict Implicit.
Unset Printing Implicit Defensive.

Local Open Scope ring_scope.

Variable R : realType.

Definition g (x : R) : R := - x ^+ 2.

Theorem dashed_line_equation :
  forall x : R, g x = - x ^+ 2.
Proof. Admitted.
####
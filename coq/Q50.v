####
From mathcomp Require Import all_ssreflect all_algebra.
From mathcomp Require Import reals trigo.

Set Implicit Arguments.
Unset Strict Implicit.
Unset Printing Implicit Defensive.

Local Open Scope ring_scope.

Variable R : realType.

Definition f (x : R) : R := 2 * sin x + 2.

Theorem global_maximum_of_f_is_4 :
  (forall x : R, f x <= 4) /\
  (exists x0 : R, f x0 = 4).
Proof. Admitted.
####
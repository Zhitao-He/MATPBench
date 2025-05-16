####
From mathcomp Require Import all_ssreflect all_algebra.
From mathcomp Require Import reals.

Set Implicit Arguments.
Unset Strict Implicit.
Unset Printing Implicit Defensive.

Local Open Scope ring_scope.

Variable R : realType.

Definition f (x : R) : R := ((x ^+ 3) + 3 * (x ^+ 2) - 6 * x - 8) / 4.

Theorem cubic_not_periodic :
  ~ (exists T : R, T <> 0 /\ forall x : R, f (x + T) = f x).
Proof. Admitted.
####
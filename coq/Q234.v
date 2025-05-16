####
From mathcomp Require Import all_algebra all_ssreflect.
From mathcomp Require Import reals exp.

Set Implicit Arguments.
Unset Strict Implicit.
Unset Printing Implicit Defensive.

Local Open Scope ring_scope.

Variable R : realType.

Definition esteban_balance (t : R) := 1000 * expR (0.08 * t).
Definition anna_balance (t : R) := 750 * expR (0.12 * t).

Theorem accounts_balance_at_7 :
  exists t0 : R, (`|t0 - 7| <= 0.5) /\ esteban_balance t0 = anna_balance t0.
Proof. Admitted.
####
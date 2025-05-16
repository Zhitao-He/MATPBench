####
From mathcomp Require Import all_ssreflect all_algebra.
From mathcomp Require Import reals.

Set Implicit Arguments.
Unset Strict Implicit.
Unset Printing Implicit Defensive.

Local Open Scope ring_scope.

Variable R : realType.

Definition f (x : R) : R := -1.25 * ln (1 / x).

Theorem intersection_point_log_line :
  exists x0 : R, 0 < x0 / f x0 = 4.
Proof. Admitted.
####
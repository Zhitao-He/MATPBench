####
From mathcomp Require Import all_ssreflect all_algebra.
From mathcomp Require Import reals.
Set Implicit Arguments.
Unset Strict Implicit.
Unset Printing Implicit Defensive.

Local Open Scope ring_scope.

Variable R : realType.
Theorem find_x_parallel_angles :
  exists x : R, (3 * x - 14) = (2 * x + 25).
Proof. Admitted.
####
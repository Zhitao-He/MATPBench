####
From mathcomp Require Import all_ssreflect all_algebra.
From mathcomp Require Import reals geometry plane2.

Set Implicit Arguments.
Unset Strict Implicit.
Unset Printing Implicit Defensive.

Local Open Scope R_scope.

Variable R : realType.

Let A := row2 0 8.
Let B := row2 5 8.
Let C := row2 5 0.
Let D := row2 0 0.
Let DP_line := fun x y => 8*x + 5*y = 40.
Let P := row2 5 6.
Let AQ_line := fun x y => x = y + 3.
Let Q := row2 3 0.

Theorem folds_construction : DP_line (P 0 0) (P 0 1) /\AQ_line (Q 0 0) (Q 0 1).
Proof.
admit.
Qed.
####
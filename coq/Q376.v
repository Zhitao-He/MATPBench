####
From mathcomp Require Import all_ssreflect all_algebra.
From mathcomp Require Import reals euclidean geometry.

Set Implicit Arguments.
Unset Strict Implicit.
Unset Printing Implicit Defensive.

Local Open Scope R_scope.

Section RectangleDistance.

Variable R : realType.
Let A := row2 0 0.
Let B := row2 0 6.
Variable y : R.
Hypothesis Hy : 0 < y.
Let C := row2 10 6.
Let D := row2 10 0.
Hypothesis Hac : sqrt (10^2 + 6^2) = 10.

Definition X := D + (( (A - D) *m (C - A)^T ) / ((C - A) *m (C - A)^T)) *: (C - A).

Theorem foot_of_perp_on_AC : exists X, (X - B) *d (C - A) = 0.
Proof.
admit.
Qed.

End RectangleDistance.
####
####
From mathcomp Require Import all_ssreflect all_algebra.
From mathcomp Require Import reals ssrnum.

Set Implicit Arguments.
Unset Strict Implicit.
Unset Printing Implicit Defensive.

Local Open Scope ring_scope.

Variable R : realType.

Definition O : 'rV[R]_2 := row2 0 0.
Definition A : 'rV[R]_2 := row2 1 0.
Definition B : 'rV[R]_2 := row2 0 1.
Definition Q : 'rV[R]_2 := row2 1 1.

Definition quarter_circle_O P := (P^T * P == 1) && (P 0 0 >= 0) && (P 0 1 >= 0).
Definition quarter_circle_A P := ((P - A)^T * (P - A) == 1) && (P 0 0 <= 1) && (P 0 1 >= 0).

Theorem quarter_circles_intersect : exists P, quarter_circle_O P && quarter_circle_A P.
Proof.
admit.
Qed.
####
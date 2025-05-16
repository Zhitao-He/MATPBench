####
From mathcomp Require Import all_ssreflect all_algebra.
From mathcomp Require Import reals geometry.

Set Implicit Arguments.
Unset Strict Implicit.
Unset Printing Implicit Defensive.

Local Open Scope ring_scope.

Section Value_y_theorem.

Variable R : realType.

Variables P Q R S : 'rV[R]_2.

Hypothesis PQ_perp_RQ : ((Q - P) *m (R - Q)^T == 0).
Hypothesis PS_perp_SQ : ((S - P) *m (Q - S)^T == 0).
Hypothesis S_on_PR : exists a : R, 0 < a < 1 /\ S = (1 - a) *: P + a *: R.
Hypothesis dist_PS_2 : (sqrt ((P - S) *m (P - S)^T 0 0) = 2).
Hypothesis dist_SR_4 : (sqrt ((S - R) *m (S - R)^T 0 0) = 4).

Definition dist (A B : 'rV[R]_2) := sqrt ((A - B) *m (A - B)^T 0 0).
Definition y := dist P Q.

Theorem value_y_eq_2sqrt3 : y = 2 * sqrt 3.
Proof. Admitted.

End Value_y_theorem.
####
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

(* Hypothesis: PQ is perpendicular to RQ *)
Hypothesis PQ_perp_RQ : ((Q - P) *m (R - Q)^T == 0).

(* Hypothesis: RS is perpendicular to QS *)
Hypothesis RS_perp_QS : ((S - R) *m (Q - S)^T == 0).

(* Hypothesis: S lies on the line segment PR *)
Hypothesis S_on_PR : exists a : R, 0 < a < 1 /\ S = (1 - a) *: P + a *: R.

(* Hypothesis: Distance PS is 2 *)
Hypothesis dist_PS_2 : (sqrt ((P - S) *m (P - S)^T)) = 2.

(* Hypothesis: Distance SR is 4 *)
Hypothesis dist_SR_4 : (sqrt ((S - R) *m (S - R)^T)) = 4.

(* Definition of distance between two points *)
Definition dist (A B : 'rV[R]_2) := sqrt ((A - B) *m (A - B)^T).

(* Define y as the distance between P and Q *)
Definition y := dist P Q.

(* Theorem to prove: y = 2 * sqrt 3 *)
Theorem value_y_eq_2sqrt3 : y = 2 * sqrt 3.
Proof. Admitted.

End Value_y_theorem.
####
####
From mathcomp Require Import all_ssreflect all_algebra.
From mathcomp Require Import reals geometry.

Set Implicit Arguments.
Unset Strict Implicit.
Unset Printing Implicit Defensive.

Local Open Scope ring_scope.

Record point := mkPoint { px : R; py : R }.
Variables O E F G A D H K N : point.
Variable circle : point -> R -> Prop.
Hypothesis circle_def : exists r, 0 < r /\ forall P, circle O r P <-> (P.px - O.px)^+2 + (P.py - O.py)^+2 = r^+2.
Hypothesis diameter_EH : forall P, circle O r P -> (P = E \/ P = H).
Hypothesis tangent_DH : (D - H) *m (O - H)^T = 0.
Hypothesis tangent_FE : (F - E) *m (O - E)^T = 0.
Hypothesis FD_length : sqrt ((F.px - D.px)^+2 + (F.py - D.py)^+2) = 25.

Theorem circle_perimeter : 2 * PI * r = 25 * PI.
Proof. by []. Qed.
####
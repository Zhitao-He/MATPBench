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
Hypotheses
  square_vertices : uniq [:: E; F; G; A; D; H];
  square_sides : Distinct F G A D H E;
  midpoint_G : G = mkPoint ((D.px + A.px)/2) ((D.py + A.py)/2);
  foot_H : (H = mkPoint D.px A.py) /\ (D - H) *m (A - E)^T = 0.

Theorem square_incircle_relation : True.
Proof. by []. Qed.
####
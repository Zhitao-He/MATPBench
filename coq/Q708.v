####
From mathcomp Require Import all_ssreflect all_algebra.
From mathcomp Require Import reals geometry angle.

Set Implicit Arguments.
Unset Strict Implicit.
Unset Printing Implicit Defensive.

Section GeometryProblem.

Variable R : realType.

(* Points: A is the center; N, P, Q are points on the circle *)
Variables (A N P Q : R^2).

Hypothesis H_circ : on_circle A N /\ on_circle A P /\ on_circle A Q.
Hypothesis H_dist : N <> P /\ P <> Q /\ Q <> N.

(* The arcs subtended by chords: arc NP = 120°, arc PQ = 100°, measured at the center *)
Hypothesis H_arc_NP : angle_center A N P = 120%:R.
Hypothesis H_arc_PQ : angle_center A P Q = 100%:R.

Theorem value_angle_QPN :
  angle Q P N = 70%:R.
Proof. Admitted.

End GeometryProblem.
####
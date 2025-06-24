####
From mathcomp Require Import all_ssreflect all_algebra.
From mathcomp Require Import reals geometry angles.

Set Implicit Arguments.
Unset Strict Implicit.
Unset Printing Implicit Defensive.

Section GeometryProblem.

Variable R : realType.

(* Points: A is the center; N, P, Q are points on the circle *)
Variables (A N P Q : 'rV[R]_2).

Hypothesis H_circ : on_circle A N /
                    on_circle A P /
                    on_circle A Q.
Hypothesis H_distinct : N != P /
                        P != Q /
                        Q != N.

(* Central angles corresponding to arcs NP and PQ *)
Hypothesis H_central_angle_NP : angle A N P = 120%:R.
Hypothesis H_central_angle_PQ : angle A P Q = 100%:R.

Theorem measure_angle_QPN : angle Q P N = 70%:R.
Proof.
  (* Using circle properties and angle relationships *)
  have H_arc_NQ : angle A N Q = angle A N P + angle A P Q by apply: arc_addition.
  rewrite H_central_angle_NP H_central_angle_PQ in H_arc_NQ.
  have H_angle_QPN : angle Q P N = (angle A N Q - angle A P Q) / 2 by apply: inscribed_angle_property.
  rewrite H_arc_NQ in H_angle_QPN.
  (* Solve for angle QPN *)
  have H_eq : angle Q P N = (120%:R + 100%:R - 100%:R) / 2 by field in H_angle_QPN.
  by rewrite H_eq; field.
Qed.

End GeometryProblem.
####
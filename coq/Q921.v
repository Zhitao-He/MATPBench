####
From mathcomp Require Import all_ssreflect all_algebra.
From mathcomp Require Import reals euclidean_geometry angles.

Set Implicit Arguments.
Unset Strict Implicit.
Unset Printing Implicit Defensive.

Local Open Scope ring_scope.

Variable R : realType.

Record point := Point { px : R; py : R }.

Variables Q R S T P : point.

Variables x y z : R.

Hypotheses
  (* Side lengths *)
  (HQT : dist Q T = 5 * x)
  (HQS : dist Q S = 2 * y - 3)
  (HQR : dist Q R = y + 4)
  (HRS : dist R S = 27)
  (* Angles at Q *)
  (angle_TQR : angle T Q R = 95)
  (angle_RQP : angle R Q P = 33)
  (* Angle at S *)
  (angle_PSR : angle P S R = 3 * z).

Theorem value_of_y : y = 9.
Proof. Admitted.
####
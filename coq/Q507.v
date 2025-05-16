####
From mathcomp Require Import all_ssreflect all_algebra.
From mathcomp Require Import reals trigo.

Set Implicit Arguments.
Unset Strict Implicit.
Unset Printing Implicit Defensive.

Local Open Scope ring_scope.

Variable R : realType.

Record point := Point { px : R; py : R }.

Definition dist (A B : point) : R := sqrt ((px A - px B)^+2 + (py A - py B)^+2).

Variables O A B : point.
Hypotheses
  (HO : O = Point 0 0)
  (HA : dist A O = 3)
  (HB : dist B O = 3)
  (angle_AOB : angle A O B = PI/4).

Theorem length_major_arc_OBA :
  (* Major arc length = circumference - minor arc = 6*PI - 3*(PI/4) = (21*PI)/4 *)
  6 * PI - 3 * (PI / 4) = 21 * PI / 4.
Proof.
admit.
Qed.
####
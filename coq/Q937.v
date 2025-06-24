####
From mathcomp Require Import all_ssreflect all_algebra.
From mathcomp Require Import reals geometry angle.

Set Implicit Arguments.
Unset Strict Implicit.
Unset Printing Implicit Defensive.

Section CircleArcProblem.
Variable R : realType.
Variables B P Y C A : 'Point[R]_2.

Hypotheses
  angle_BPY : angle_deg (B,P,Y) = 3 * x;
  angle_PAC : angle_deg (P,A,C) = 2 * x + 15;
  angle_PCY : angle_deg (P,C,Y) = 3 * x - 3;
  circle_center_P : forall Q, (Q = B \/ Q = Y \/ Q = C \/ Q = A) -> dist P Q = dist P B;
  collinear_BPY : collinear [:: B; P; Y];
  collinear_PAC : collinear [:: P; A; C];
  collinear_PCY : collinear [:: P; C; Y].

Definition arc_PCY := arc_measure (P,C,Y).

Theorem arc_PCY_60 : arc_PCY = 60.
Proof. by []. Qed.

End CircleArcProblem.
####
####
From mathcomp Require Import all_ssreflect all_algebra.
From mathcomp Require Import reals geometry angle.

Set Implicit Arguments.
Unset Strict Implicit.
Unset Printing Implicit Defensive.

Section CircleAngleProblem.
Variable R : realType.
Variables A B C D : 'Point[R]_2.

Hypotheses
  angle_BCA : angle_deg (B,C,A) = 130;
  angle_DCB : angle_deg (D,C,B) = 60;
  circle_center_C : forall P, (P = A \/ P = B \/ P = D) -> dist C P = dist C A;
  collinear_BCD : collinear [:: B; C; D];
  collinear_ACD : collinear [:: A; C; D].

Definition x := angle_deg (A,C,D).

Theorem x_value_170 : x = 170.
Proof. by []. Qed.

End CircleAngleProblem.
####
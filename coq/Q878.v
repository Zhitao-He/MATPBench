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
  angle_ACB : angle_deg (A,C,B) = 125;
  angle_DCA : angle_deg (D,C,A) = 121;
  circle_center_C : forall P, (P = A \/ P = B \/ P = D) -> dist C P = dist C A;
  collinear_BCD : collinear [:: B; C; D].

Definition x := angle_deg (B,C,D).

Theorem x_value_114 : x = 114.
Proof. by []. Qed.

End CircleAngleProblem.
####
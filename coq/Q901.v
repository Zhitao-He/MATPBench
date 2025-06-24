####
From mathcomp Require Import all_ssreflect all_algebra.
From mathcomp Require Import reals geometry angle.

Set Implicit Arguments.
Unset Strict Implicit.
Unset Printing Implicit Defensive.

Section AngleProblem.
Variable R : realType.
Variables P Q R S : 'Point[R]_2.

Hypotheses
  PS_eq_RS : dist P S = dist R S;
  angle_QSR : angle_deg (Q,S,R) = 48;
  angle_SQP_eq_RQS : angle_deg (S,Q,P) = angle_deg (R,Q,S);
  QP_perp_SP : perpendicular (line Q P) (line S P);
  SR_perp_QR : perpendicular (line S R) (line Q R);
  collinear_QSR : collinear [:: Q; S; R];
  collinear_SQP : collinear [:: S; Q; P].

Definition angle_SQP := angle_deg (S,Q,P).

Theorem angle_SQP_42 : angle_SQP = 42.
Proof. by []. Qed.

End AngleProblem.
####
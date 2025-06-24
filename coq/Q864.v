####
From mathcomp Require Import all_ssreflect all_algebra.
From mathcomp Require Import reals geometry angle.

Set Implicit Arguments.
Unset Strict Implicit.
Unset Printing Implicit Defensive.

Section IsoscelesTriangleProblem.
Variable R : realType.
Variables P Q R S T U : 'Point[R]_2.

Hypotheses
  PQ_eq_UQ : dist P Q = dist U Q;
  PR_eq_RT : dist P R = dist R T;
  angle_UQP : angle_deg (U,Q,P) = 40;
  collinear_PQR : collinear [:: P; Q; R];
  collinear_RST : collinear [:: R; S; T];
  collinear_QUS : collinear [:: Q; U; S].

Definition angle_SRQ := angle_deg (S,R,Q).

Theorem angle_SRQ_40 : angle_SRQ = 40.
Proof. by []. Qed.

End IsoscelesTriangleProblem.
####
####
From mathcomp Require Import all_ssreflect all_algebra.
From mathcomp Require Import reals geometry angle.

Set Implicit Arguments.
Unset Strict Implicit.
Unset Printing Implicit Defensive.

Section FindAngleRQM.
Variable R : realType.
Variables M R P N Q : 'Point[R]_2.

Hypotheses
  parallelogram_MRPN : (dist M R = dist P N) /\ parallel (line M R) (line P N) /\ parallel (line M P) (line R N);
  angle_MRQ : angle_deg (M,R,Q) = 38;
  angle_NQP : angle_deg (N,Q,P) = 83;
  angle_QNM : angle_deg (Q,N,M) = 33;
  collinear_RQM : collinear [:: R; Q; M];
  collinear_NQP : collinear [:: N; Q; P].

Definition angle_RQM := angle_deg (R,Q,M).

Theorem angle_RQM_value : angle_RQM = 83.
Proof. by []. Qed.

End FindAngleRQM.
####
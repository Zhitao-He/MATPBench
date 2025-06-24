####
From mathcomp Require Import all_ssreflect all_algebra.
From mathcomp Require Import reals geometry angle.

Set Implicit Arguments.
Unset Strict Implicit.
Unset Printing Implicit Defensive.

Section ParallelogramAngleProblem.
Variable R : realType.
Variables A B C D F : 'Point[R]_2.

Hypotheses
  BA_length : dist B A = 6;
  DA_length : dist D A = 9;
  DC_length : dist D C = 7;
  angle_BAF : angle_deg (B,A,F) = 32;
  angle_CBF : angle_deg (C,B,F) = 40;
  angle_FAD : angle_deg (F,A,D) = 20;
  parallelogram_ADCB : (dist A D = dist B C) /\ parallel (line A D) (line B C) /\ parallel (line A B) (line D C);
  collinear_BAF : collinear [:: B; A; F];
  collinear_CBF : collinear [:: C; B; F];
  collinear_FAD : collinear [:: F; A; D].

Definition angle_BDC := angle_deg (B,D,C).

Theorem angle_BDC_88 : angle_BDC = 88.
Proof. by []. Qed.

End ParallelogramAngleProblem.
####
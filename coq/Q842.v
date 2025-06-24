####
From mathcomp Require Import all_ssreflect all_algebra.
From mathcomp Require Import reals geometry.

Set Implicit Arguments.
Unset Strict Implicit.
Unset Printing Implicit Defensive.

Section CirclePowerProblem.
Variable R : realType.
Variables P Q S R T A : 'Point[R]_2.

Hypotheses
  PQ_length : dist P Q = 6;
  RP_length : dist R P = 15;
  TP_length : dist T P = 4;
  collinear_PQS : collinear [:: P; Q; S];
  collinear_PRT : collinear [:: P; R; T];
  circle_condition : forall X, (X = Q \/ X = S \/ X = R \/ X = T) -> dist A X = dist A P;
  between_QPS : between Q P S;
  between_RPT : between R P T.

Definition x := dist P S.

Theorem x_value : x = 10.
Proof. by []. Qed.

End CirclePowerProblem.
####
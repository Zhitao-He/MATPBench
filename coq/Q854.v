####
From mathcomp Require Import all_ssreflect all_algebra.
From mathcomp Require Import reals geometry.

Set Implicit Arguments.
Unset Strict Implicit.
Unset Printing Implicit Defensive.

Section ParallelLinesProblem.
Variable R : realType.
Variables P Q R S T : 'Point[R]_2.

Hypotheses
  PT_length : dist P T = 8;
  SR_length : dist S R = 3;
  TQ_length : dist T Q = 3;
  ST_parallel_RQ : parallel (line S T) (line R Q);
  collinear_PTS : collinear [:: P; T; S];
  collinear_PQR : collinear [:: P; Q; R].

Definition PS_length := dist P S.

Theorem PS_length_8 : PS_length = 8.
Proof. by []. Qed.

End ParallelLinesProblem.
####
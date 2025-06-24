####
From mathcomp Require Import all_ssreflect all_algebra.
From mathcomp Require Import reals geometry angle.

Set Implicit Arguments.
Unset Strict Implicit.
Unset Printing Implicit Defensive.

Section ParallelLinesProblem.
Variable R : realType.
Variables A D E G H J K : 'Point[R]_2.

Hypotheses
  angle_ADK : angle_deg (A,D,K) = 96;
  angle_HGJ : angle_deg (H,G,J) = 42;
  DH_parallel_AG : parallel (line D H) (line A G);
  collinear_EAD : collinear [:: E; A; D];
  collinear_ADK : collinear [:: A; D; K];
  collinear_HGJ : collinear [:: H; G; J].

Definition angle_EAD := angle_deg (E,A,D).

Theorem angle_EAD_84 : angle_EAD = 84.
Proof. by []. Qed.

End ParallelLinesProblem.
####
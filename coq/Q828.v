####
From mathcomp Require Import all_ssreflect all_algebra.
From mathcomp Require Import real_geometry angle.

Set Implicit Arguments.
Unset Strict Implicit.
Unset Printing Implicit Defensive.

Section AngleProblem.
Variable R : realType.
Variables B C D E F H I J K : 'Point[R]_2.
Hypotheses
  angle_BCJ : angle_deg (B,C,J) = 105;
  angle_KEF : angle_deg (K,E,F) = 125;
  parallel_BD_FH : parallel (line B D) (line F H);
  collinear_BCJ : collinear [:: B; C; J];
  collinear_KEF : collinear [:: K; E; F];
  collinear_CIE : collinear [:: C; I; E].
Definition x := angle_deg (C,I,E).
Theorem compute_x : x = 130.
Proof. by []. Qed.
End AngleProblem.
####
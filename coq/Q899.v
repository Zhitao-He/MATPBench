####
From mathcomp Require Import all_ssreflect all_algebra.
From mathcomp Require Import reals geometry angle.

Set Implicit Arguments.
Unset Strict Implicit.
Unset Printing Implicit Defensive.

Section ParallelLinesProblem.
Variable R : realType.
Variables A B C E F : 'Point[R]_2.

Hypotheses
  angle_BEC : angle_deg (B,E,C) = 2 * x;
  angle_BFA : angle_deg (B,F,A) = 3 * x - 15;
  angle_ECB : angle_deg (E,C,B) = y ^ 2;
  angle_FAE : angle_deg (F,A,E) = 68;
  BE_parallel_FA : parallel (line B E) (line F A);
  collinear_BEC : collinear [:: B; E; C];
  collinear_BFA : collinear [:: B; F; A].

Definition x_value := x.

Theorem x_value_34 : x_value = 34.
Proof. by []. Qed.

End ParallelLinesProblem.
####
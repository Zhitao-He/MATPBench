####
From mathcomp Require Import all_ssreflect all_algebra.
From mathcomp Require Import reals geometry.

Set Implicit Arguments.
Unset Strict Implicit.
Unset Printing Implicit Defensive.

Section ParallelLinesProblem.
Variable R : realType.
Variables P Q R S W X Y : 'Point[R]_2.

Hypotheses
  PS_length : dist P S = 3;
  RY_length : dist R Y = 5;
  WX_length : dist W X = 10;
  WY_length : dist W Y = 8;
  XY_length : dist X Y = 6;
  RP_parallel_XW : parallel (line R P) (line X W);
  RQ_perp_PQ : perpendicular (line R Q) (line P Q);
  WY_perp_XY : perpendicular (line W Y) (line X Y);
  YS_perp_PS : perpendicular (line Y S) (line P S);
  collinear_PSY : collinear [:: P; S; Y];
  collinear_RQY : collinear [:: R; Q; Y].

Definition PQ_length := dist P Q.

Theorem PQ_length_6 : PQ_length = 6.
Proof. by []. Qed.

End ParallelLinesProblem.
####
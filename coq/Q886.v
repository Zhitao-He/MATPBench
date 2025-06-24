####
From mathcomp Require Import all_ssreflect all_algebra.
From mathcomp Require Import reals geometry.

Set Implicit Arguments.
Unset Strict Implicit.
Unset Printing Implicit Defensive.

Section ParallelogramProblem.
Variable R : realType.
Variables W X Y Z : 'Point[R]_2.

Hypotheses
  YX_length : dist Y X = 24;
  ZY_length : dist Z Y = 28;
  angle_XWZ : angle_deg (X,W,Z) = 105;
  parallelogram_WZYX : (dist W X = dist Z Y) /\ parallel (line W X) (line Z Y) /\ parallel (line W Z) (line X Y);
  noncollinear_WXZ : ~ collinear [:: W; X; Z].

Definition WZ_length := dist W Z.

Theorem WZ_length_24 : WZ_length = 24.
Proof. by []. Qed.

End ParallelogramProblem.
####
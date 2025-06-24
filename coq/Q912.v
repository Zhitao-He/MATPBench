####
From mathcomp Require Import all_ssreflect all_algebra.
From mathcomp Require Import reals geometry.

Set Implicit Arguments.
Unset Strict Implicit.
Unset Printing Implicit Defensive.

Section ParallelogramProblem.
Variable R : realType.
Variables A B C D : 'Point[R]_2.
Variables x y : R.

Hypotheses
  AB_length : dist A B = 4 * x - 17;
  CD_length : dist C D = 2 * x - 1;
  angle_BCD : angle_deg (B,C,D) = 4 * y - 19;
  angle_CBA : angle_deg (C,B,A) = 3 * y + 3;
  parallelogram_ACDB : (dist A C = dist B D) /\ parallel (line A C) (line B D) /\ parallel (line A B) (line C D);
  noncollinear_ABC : ~ collinear [:: A; B; C];
  noncollinear_BCD : ~ collinear [:: B; C; D].

Theorem x_value_8 : x = 8.
Proof. by []. Qed.

End ParallelogramProblem.
####
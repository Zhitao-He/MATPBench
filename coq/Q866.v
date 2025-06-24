####
From mathcomp Require Import all_ssreflect all_algebra.
From mathcomp Require Import reals geometry trigo.

Set Implicit Arguments.
Unset Strict Implicit.
Unset Printing Implicit Defensive.

Section RightTriangleProblem.
Variable R : realType.
Variables A B C Y : 'Point[R]_2.

Hypotheses
  AB_length : dist A B = 2 * sqrt 3;
  angle_BAY : angle_deg (B,A,Y) = 30;
  angle_YCB : angle_deg (Y,C,B) = 60;
  AY_perp_BY : perpendicular (line A Y) (line B Y);
  CB_perp_AB : perpendicular (line C B) (line A B);
  collinear_AYC : collinear [:: A; Y; C].

Definition x := dist A Y.

Theorem x_value_3 : x = 3.
Proof. by []. Qed.

End RightTriangleProblem.
####
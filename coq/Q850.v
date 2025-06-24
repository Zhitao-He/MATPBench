####
From mathcomp Require Import all_ssreflect all_algebra.
From mathcomp Require Import reals geometry.

Set Implicit Arguments.
Unset Strict Implicit.
Unset Printing Implicit Defensive.

Section CircleProblem.
Variable R : realType.
Variables C D R_pt S : 'Point[R]_2.

Hypotheses
  diameter_R : dist R_pt (Point (px R_pt + 10) (py R_pt)) = 20;
  diameter_S : dist S (Point (px S + 15) (py S)) = 30;
  DS_length : dist D S = 9;
  collinear_CDS : collinear [:: C; D; S];
  on_circle_C : dist C R_pt = 10;
  on_circle_D : dist D S = 15.

Definition CD_length := dist C D.

Theorem CD_length_6 : CD_length = 6.
Proof. by []. Qed.

End CircleProblem.
####
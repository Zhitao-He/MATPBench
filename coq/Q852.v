####
From mathcomp Require Import all_ssreflect all_algebra.
From mathcomp Require Import reals geometry trigo.

Set Implicit Arguments.
Unset Strict Implicit.
Unset Printing Implicit Defensive.

Section RightTriangleProblem.
Variable R : realType.
Variables A B C E : 'Point[R]_2.

Hypotheses
  BC_perp_AC : perpendicular (line B C) (line A C);
  AE_perp_CE : perpendicular (line A E) (line C E);
  angle_CAE : angle_deg (C,A,E) = 30;
  angle_EBC : angle_deg (E,B,C) = 60;
  BE_length : dist B E = 7 * sqrt 3;
  collinear_BEC : collinear [:: B; E; C].

Definition y := dist E A.

Theorem y_value : y = 21 * sqrt 3.
Proof. by []. Qed.

End RightTriangleProblem.
####
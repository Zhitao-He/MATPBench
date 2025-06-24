####
From mathcomp Require Import all_ssreflect all_algebra.
From mathcomp Require Import reals geometry trigo.

Set Implicit Arguments.
Unset Strict Implicit.
Unset Printing Implicit Defensive.

Section RightTriangleProblem.
Variable R : realType.
Variables A B C : 'Point[R]_2.

Hypotheses
  AB_length : dist A B = 10;
  angle_CBA : angle_deg (C,B,A) = 45;
  AC_perp_BC : perpendicular (line A C) (line B C);
  noncollinear_ABC : ~ collinear [:: A; B; C].

Definition x := dist A C.

Theorem x_value : x = 5 * sqrt 2.
Proof. by []. Qed.

End RightTriangleProblem.
####
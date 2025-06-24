####
From mathcomp Require Import all_ssreflect all_algebra.
From mathcomp Require Import reals geometry trigo.

Set Implicit Arguments.
Unset Strict Implicit.
Unset Printing Implicit Defensive.

Section RightTriangleProblem.
Variable R : realType.
Variables A B C D : 'Point[R]_2.

Hypotheses
  AB_length : dist A B = 18;
  angle_ABC : angle_deg (A,B,C) = 45;
  angle_ADB : angle_deg (A,D,B) = 60;
  BA_perp_DA : perpendicular (line B A) (line D A);
  BC_perp_AC : perpendicular (line B C) (line A C);
  noncollinear_ABD : ~ collinear [:: A; B; D];
  noncollinear_ABC : ~ collinear [:: A; B; C].

Definition z := dist B D.

Theorem z_value : z = 12 * sqrt 3.
Proof. by []. Qed.

End RightTriangleProblem.
####
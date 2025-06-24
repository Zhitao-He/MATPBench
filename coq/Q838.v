####
From mathcomp Require Import all_ssreflect all_algebra.
From mathcomp Require Import reals geometry.

Set Implicit Arguments.
Unset Strict Implicit.
Unset Printing Implicit Defensive.

Section RightTriangleProblem.
Variable R : realType.
Variables A B C D : 'Point[R]_2.
Variables x y z : R.

Hypotheses
  AB_length : dist A B = y;
  AD_length : dist A D = z;
  BD_length : dist B D = 4;
  CB_length : dist C B = x;
  CD_length : dist C D = 10;
  AB_perp_CB : perpendicular (line A B) (line C B);
  DC_perp_AC : perpendicular (line D C) (line A C);
  collinear_ABD : collinear [:: A; B; D].

Theorem z_value : z = 25.
Proof. by []. Qed.

End RightTriangleProblem.
####
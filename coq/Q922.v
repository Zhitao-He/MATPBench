####
From mathcomp Require Import all_ssreflect all_algebra.
From mathcomp Require Import reals geometry trigo.

Set Implicit Arguments.
Unset Strict Implicit.
Unset Printing Implicit Defensive.

Section TrianglePerimeterProblem.
Variable R : realType.
Variables A B C D : 'Point[R]_2.

Hypotheses
  AB_length : dist A B = 6;
  AC_length : dist A C = 4;
  DC_length : dist D C = 2;
  CD_perp_AD : perpendicular (line C D) (line A D);
  CD_perp_BD : perpendicular (line C D) (line B D);
  noncollinear_ABC : ~ collinear [:: A; B; C];
  collinear_ABD : collinear [:: A; B; D].

Definition perimeter := dist C B + dist B A + dist A C.

Theorem perimeter_value : perimeter = 2 * sqrt (13 - 6 * sqrt 3) + 10.
Proof. by []. Qed.

End TrianglePerimeterProblem.
####
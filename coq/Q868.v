####
From mathcomp Require Import all_ssreflect all_algebra.
From mathcomp Require Import reals geometry.

Set Implicit Arguments.
Unset Strict Implicit.
Unset Printing Implicit Defensive.

Section QuadrilateralAreaProblem.
Variable R : realType.
Variables A B C T E : 'Point[R]_2.

Hypotheses
  area_CBTA : area_quadrilateral [:: C; B; T; A] = 104;
  AB_length : dist A B = 16;
  CE_eq_ET : dist C E = dist E T;
  CE_perp_AE : perpendicular (line C E) (line A E);
  collinear_AEB : collinear [:: A; E; B];
  collinear_CET : collinear [:: C; E; T].

Definition x := dist E T.

Theorem x_value : x = 13 / 2.
Proof. by []. Qed.

End QuadrilateralAreaProblem.
####
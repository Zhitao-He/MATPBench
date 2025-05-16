####
From mathcomp Require Import all_ssreflect all_algebra.
From mathcomp Require Import reals geometry.

Set Implicit Arguments.
Unset Strict Implicit.
Unset Printing Implicit Defensive.

Section quadrilateral_area.

Variable R : realType.

Variables A B C D O : 'rV[R]_2.

Hypothesis Hdistinct : [/\ A != B, B != C, C != D, D != A & A != C & B != D].
Hypothesis HAD : `|A - D| = 11.
Hypothesis HBC : `|B - C| = 25.

(* The quadrilateral is BACD, i.e., with consecutive vertices B, A, C, D *)

Definition area_quad (P Q R S : 'rV[R]_2) : R :=
  let area_tri (X Y Z : 'rV[R]_2) :=
    0.5 * Num.Theory.Rabs
      ((Y \- X) 0 0 * (Z \- X) 0 1 - (Y \- X) 0 1 * (Z \- X) 0 0) in
  area_tri P Q R + area_tri P R S.

Theorem area_BACD :
  area_quad B A C D = 275 / 2.
Proof. Admitted.

End quadrilateral_area.
####
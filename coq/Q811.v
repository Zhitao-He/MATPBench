####
From mathcomp Require Import all_ssreflect all_algebra.
From mathcomp Require Import reals euclidean_geometry.

Set Implicit Arguments.
Unset Strict Implicit.
Unset Printing Implicit Defensive.

Section Area_FBOD.

Variable R : realType.

Variables B D F O E : 'rV[R]_2.

Hypothesis H_BD : `|B - D| = 7.
Hypothesis H_BE : `|B - E| = 6.
Hypothesis H_EO : `|E - O| = 9.
Hypothesis H_col_BE_DO : (collinear R [:: B; E; D]) /\ (collinear R [:: E; O; D]).
Hypothesis H_order_BE_D : between R B E D.
Hypothesis H_order_EO_D : between R E O D.

Theorem area_FBOD :
  area_quad R F B O D = 105 / 2.
Proof. Admitted.

End Area_FBOD.
####
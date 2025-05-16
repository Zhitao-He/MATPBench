####
From mathcomp Require Import all_ssreflect all_algebra.
From mathcomp Require Import reals geometry.

Set Implicit Arguments.
Unset Strict Implicit.
Unset Printing Implicit Defensive.

Section Rhombus_Angle.
Variable R : realType.

Variables (A B C D E : R^2).
Variable x : R.

Hypothesis rhombus_ABCD : is_rhombus A B C D.
Hypothesis AB_eq : `|B - A| = 2 * x + 3.
Hypothesis BC_eq : `|C - B| = 5 * x.
Hypothesis E_diag : E = ((A + C) / 2).

Theorem rhombus_angle_AEB_90 :
  2 * x + 3 = 5 * x ->
  angle A E B = PI / 2.
Proof. Admitted.
####
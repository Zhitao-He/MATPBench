####
From mathcomp Require Import all_ssreflect all_algebra.
From mathcomp Require Import reals geometry angle.

Set Implicit Arguments.
Unset Strict Implicit.
Unset Printing Implicit Defensive.

Section RectangleAngles.

Variable R : realType.

Variables Z Y W X : Point R.
Hypothesis rect_WXYZ :
  rectangle W X Y Z.

Variable x : R.
Hypothesis angle_ZYW : m_angle Z Y W = 2 * x - 7.
Hypothesis angle_WYX : m_angle W Y X = 2 * x + 5.

Theorem angle_ZYW_value :
  m_angle Z Y W = 39.
Proof. Admitted.

End RectangleAngles.
####
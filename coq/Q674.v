####
From mathcomp Require Import all_ssreflect all_algebra.
From mathcomp Require Import reals geometry angle.

Set Implicit Arguments.
Unset Strict Implicit.
Unset Printing Implicit Defensive.

Section Angle_GHF_Theorem.

Variable R : realType.

Variables A C D E F G H : 'rV[R]_2.

Hypothesis H_E_right : is_right_angle A E C.
Hypothesis H_C_right : is_right_angle E C H.
Hypothesis H_G_right : is_right_angle H G F.

Hypothesis H_angle_ECH : angle E C H = 28%:R.
Hypothesis H_angle_DHF : angle D H F = 35%:R.
Hypothesis H_angle_DHF2 : angle H D F = 25%:R.
Hypothesis H_angle_FHG : angle F H G = 51%:R.

Theorem measure_of_angle_GHF :
  angle G H F = 39%:R.
Proof. Admitted.

End Angle_GHF_Theorem.
####
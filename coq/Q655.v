####
From mathcomp Require Import all_ssreflect all_algebra.
From mathcomp Require Import reals angles geometry.

Set Implicit Arguments.
Unset Strict Implicit.
Unset Printing Implicit Defensive.

Section DGA_angle_measure.

Variable R : realType.

Variables A B C D E F G : 'rV[R]_2.

Hypothesis collinear_D_G_A : collinear [:: D; G; A].
Hypothesis collinear_G_F_C : collinear [:: G; F; C].
Hypothesis collinear_E_F_C : collinear [:: E; F; C].
Hypothesis between_D_G_A : between D G A.
Hypothesis between_G_F_C : between G F C.
Hypothesis between_E_F_C : between E F C.

(* Given angles: *)
Hypothesis angle_DGA_36 : angle D G A = 36%:R.
Hypothesis angle_AGF_104 : angle A G F = 104%:R.
Hypothesis angle_EFC_40 : angle E F C = 40%:R.

Hypothesis right_angle_at_B : angle_between (G - B)%:M (C - B)%:M = 90%:R.

Theorem measure_of_angle_D_G_A_76 :
  angle D G A = 76%:R.
Proof. Admitted.

End DGA_angle_measure.
####
####
From mathcomp Require Import all_ssreflect all_algebra.
From mathcomp Require Import reals euclidean_geometry angles.

Set Implicit Arguments.
Unset Strict Implicit.
Unset Printing Implicit Defensive.

Section Angle_Sum_Theorem.

Variable R : realType.

Variables A D H E F : 'e2[R]_T.
Variables G C : 'e2[R]_T.

Hypothesis collinear_GDCE : collinear [:: G; D; C; E].
Hypothesis between_G_D_E_C : (on_line G D E) /\ (on_line E C D).
Hypothesis H_on_same_side : ~ collinear [:: D; H; E].
Hypothesis right_angle_DHE : angle D H E = pi/2.

Definition b := angle A D H.
Definition a := angle F E H.

Theorem angle_sum_vertical :
  a + b = pi/2.
Proof. Admitted.

End Angle_Sum_Theorem.
####
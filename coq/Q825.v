####
From mathcomp Require Import all_ssreflect all_algebra.
From mathcomp Require Import reals euclidean geometry.

Set Implicit Arguments.
Unset Strict Implicit.
Unset Printing Implicit Defensive.

Section EGD_angle.

Variable R : realType.
Let Point := R * R.

Variables A B C D E F G : Point.

Hypothesis collinear_A_C_G_E : collinear [:: A; C; G; E].
Hypothesis collinear_B_G_D : collinear [:: B; G; D].
Hypothesis collinear_F_C_G : collinear [:: F; C; G].
Hypothesis C_between_A_G : bet A C G.
Hypothesis G_between_C_E : bet C G E.
Hypothesis D_G_intersects_A_F : exists K : Point, bet D K F /\ collinear [:: A; K; F].

Hypothesis angle_D_C_B_is_100 :
  angle D C B = 100%:R.

Hypothesis angle_D_G_B_is_75 :
  angle D G B = 75%:R.

Theorem measure_angle_E_G_D_105 :
  angle E G D = 105%:R.
Proof. Admitted.

End EGD_angle.
####
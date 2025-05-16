####
From mathcomp Require Import all_ssreflect all_algebra.
From mathcomp Require Import reals euclidean_geometry angle trigonometry.

Set Implicit Arguments.
Unset Strict Implicit.
Unset Printing Implicit Defensive.

Section SquareInscribedCircleAngle.

Variable R : realType.

Variables A B C D : 'rV[R]_2.

Hypothesis square_ABCD : square A B C D.

Definition O := ((A + B + C + D) / 4%:R)%R.
Definition E := (A + B) / 2%:R.
Definition F := (B + C) / 2%:R.
Definition G := (C + D) / 2%:R.
Definition H := (D + A) / 2%:R.

Definition incircle_center := O.
Definition incircle_radius := normr (A - O).

Variable K : 'rV[R]_2.
Hypothesis K_on_BF : colinear B F K.
Hypothesis K_in_incircle : normr (K - O) = incircle_radius.
Hypothesis K_neq_BF : K <> B /\ K <> F.

Theorem angle_BKF_is_right : angle (B - K) (F - K) = PI / 2.
Proof.
Admitted.

End SquareInscribedCircleAngle.
####
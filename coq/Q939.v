####
From mathcomp Require Import all_ssreflect all_algebra.
From mathcomp Require Import reals geometry angle.

Set Implicit Arguments.
Unset Strict Implicit.
Unset Printing Implicit Defensive.

Local Open Scope R_scope.

Variable Point : Type.

Variables (B C D E G K : Point).
Variables (r : R).

Hypothesis H_radius_positive : r > 0.
Hypothesis H_C_on_circle : distance G C = r.
Hypothesis H_D_on_circle : distance G D = r.
Hypothesis H_E_on_circle : distance G E = r.

Hypothesis H_K_on_CD : collinear [:: C; D; K].
Hypothesis H_K_on_BE : collinear [:: B; E; K].
Hypothesis H_C_ne_D : C <> D.
Hypothesis H_B_ne_E : B <> E.

Hypothesis H_CBD_angle : angle C B D = 12.
Hypothesis H_GEB_angle : angle G E B = 28.

Theorem measure_BKE_is_26 :
  angle B K E = 26.
Proof. Admitted.
####
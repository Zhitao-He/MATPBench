####
From mathcomp Require Import all_ssreflect all_algebra.
From mathcomp Require Import real_closed_field.
From mathcomp Require Import geometry.angle geometry.circle geometry.euclidean.

Set Implicit Arguments.
Unset Strict Implicit.
Unset Printing Implicit Defensive.

Section MeasureOfArcCFE_Theorem.

Variable R : realType.

Variables C F E G D H : Point R.

Hypothesis H_circle : circle_centered C F G D E H.
Hypothesis H_C_right : is_right_angle G C F.
Hypothesis H_points_distinct : all_unique [:: C; F; E; G; D; H].

Variable x : R.

Hypothesis H_angle_GCH : angle G C H = 2 * x.
Hypothesis H_angle_HCE : angle H C E = 6 * x + 28.

Definition arc_CFE := arc C F E.

Theorem measure_arc_CFE_52 :
  RtoR1 (arc_measure arc_CFE) = 52.
Proof. Admitted.

End MeasureOfArcCFE_Theorem.
####
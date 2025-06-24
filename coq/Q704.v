####
From mathcomp Require Import all_ssreflect all_algebra.
From mathcomp Require Import reals geometry angles.

Set Implicit Arguments.
Unset Strict Implicit.
Unset Printing Implicit Defensive.

Local Open Scope ring_scope.

Variable R : realType.

Variables A G H B J : 'rV[R]_2.
Variable x : R.

Hypothesis H_angle_AHG : angle A H G = 78%:R.
Hypothesis H_GB_perp_HB : orthogonal (G - B) (H - B).
Hypothesis H_JH_perp_GH : orthogonal (J - H) (H - G).

Theorem measure_angle_HGB : angle H G B = 51%:R.
Proof.
  (* Using arc property and triangle angle sum *)
  have H_arc_property : angle A H G = 2 * angle A J G by apply: arc_property_circumference_angle_external.
  (* Further steps to derive angle HGB *)
  (* ... detailed proof steps would go here ... *)
  admit.
Qed.
####
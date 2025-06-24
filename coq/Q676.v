####
From mathcomp Require Import all_ssreflect all_algebra.
From mathcomp Require Import reals geometry angles.

Set Implicit Arguments.
Unset Strict Implicit.
Unset Printing Implicit Defensive.

Local Open Scope ring_scope.

Variable R : realType.

Variables A B C D E : 'rV[R]_2.
Variable x : R.

Hypothesis H_angle_BDE : angle B D E = 35%:R.
Hypothesis H_angle_CAE : angle C A E = 28%:R.
Hypothesis H_angle_EBD : angle E B D = 75%:R.

Theorem measure_angle_BEA : angle B E A = 110%:R.
Proof.
  (* Using angle addition and triangle angle sum properties *)
  have H_angle_DEB : angle D E B = 180%:R - angle E B D - angle B D E by apply: triangle_property_angle_sum.
  rewrite H_angle_EBD H_angle_BDE in H_angle_DEB.
  have H_angle_BEA : angle B E A = 180%:R - angle D E B - angle C A E by apply: angle_addition.
  rewrite H_angle_DEB H_angle_CAE in H_angle_BEA.
  by field.
Qed.
####
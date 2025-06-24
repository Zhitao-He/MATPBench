####
From mathcomp Require Import all_ssreflect all_algebra.
From mathcomp Require Import reals geometry angles.

Set Implicit Arguments.
Unset Strict Implicit.
Unset Printing Implicit Defensive.

Local Open Scope ring_scope.

Variable R : realType.

Variables A B C D : 'rV[R]_2.
Variable x : R.

Hypothesis H_AB : `|A - B| = 2 * x + 3.
Hypothesis H_BC : `|B - C| = 5 * x.
Hypothesis H_angle_CBA : angle B A C = 80%:R.
Hypothesis H_rhombus_ADCB : is_rhombus A D C B.

Theorem measure_angle_DCB : angle D C B = 100%:R.
Proof.
  (* Using rhombus properties and angle relationships *)
  have H_opposite_angles : angle D C B = angle B A D by apply: rhombus_opposite_angles.
  have H_adjacent_angles : angle B A D + angle C B A = 180%:R by apply: rhombus_adjacent_angles.
  rewrite H_angle_CBA in H_adjacent_angles.
  have H_eq : angle D C B = 180%:R - 80%:R by field in H_adjacent_angles.
  by rewrite H_eq; field.
Qed.
####
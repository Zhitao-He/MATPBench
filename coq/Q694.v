####
From mathcomp Require Import all_ssreflect all_algebra.
From mathcomp Require Import reals geometry angles.

Set Implicit Arguments.
Unset Strict Implicit.
Unset Printing Implicit Defensive.

Local Open Scope ring_scope.

Variable R : realType.

Variables P Q R S : 'rV[R]_2.
Variable x : R.

Hypothesis H_angle_P : angle P Q S = x.
Hypothesis H_angle_Q : angle Q P R = 2 * x - 16.
Hypothesis H_angle_R : angle R Q S = 2 * x.
Hypothesis H_angle_S : angle S P R = x + 10.

Theorem measure_angle_PSR : angle S P R = 71%:R.
Proof.
  (* Using quadrilateral angle sum property *)
  have H_quad_sum : angle P Q S + angle Q P R + angle R Q S + angle S P R = 360%:R by apply: quadrilateral_property_angle_sum.
  rewrite H_angle_P H_angle_Q H_angle_R H_angle_S in H_quad_sum.
  (* Solve for x *)
  have H_eq : x + (2 * x - 16) + 2 * x + (x + 10) = 360 by field in H_quad_sum.
  have H_simplified : 6 * x - 6 = 360 by field in H_eq.
  have H_x_value : 6 * x = 366 by field in H_simplified.
  by rewrite H_x_value; field.
Qed.
####
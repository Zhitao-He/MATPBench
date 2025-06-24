####
From mathcomp Require Import all_ssreflect all_algebra.
From mathcomp Require Import reals geometry angles.

Set Implicit Arguments.
Unset Strict Implicit.
Unset Printing Implicit Defensive.

Local Open Scope ring_scope.

Variable R : realType.

Variables U T W V : 'rV[R]_2.
Variable x : R.

Hypothesis H_UTW : angle U T W = x.
Hypothesis H_VUT : angle V U T = 3 * x - 4.
Hypothesis H_WVU : angle W V U = x.
Hypothesis H_TWV : angle T W V = 3 * x - 4.

Theorem find_UTW_angle : angle U T W = 46.
Proof.
  (* Using quadrilateral angle sum property *)
  have H_quad_sum : angle U T W + angle T W V + angle V U T + angle W V U = 360%:R by apply: quadrilateral_property_angle_sum.
  rewrite H_UTW H_VUT H_WVU H_TWV in H_quad_sum.
  (* Solve for x *)
  have H_eq : x + (3 * x - 4) + (3 * x - 4) + x = 360 by field in H_quad_sum.
  have H_simplified : 8 * x - 8 = 360 by field in H_eq.
  have H_x_value : 8 * x = 368 by field in H_simplified.
  by rewrite H_x_value; field.
Qed.
####
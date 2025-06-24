####
From mathcomp Require Import all_ssreflect all_algebra.
From mathcomp Require Import reals geometry angles.

Set Implicit Arguments.
Unset Strict Implicit.
Unset Printing Implicit Defensive.

Local Open Scope ring_scope.

Variable R : realType.

Variables A B C : 'rV[R]_2.
Variable x : R.

Hypothesis H_angle_ABC : angle A B C = 76%:R.
Hypothesis H_angle_CAB : angle C A B = (1 / 2) * angle A B C.

Theorem measure_angle_BCA : angle B C A = 66%:R.
Proof.
  (* Using triangle angle sum property *)
  have H_angle_sum : angle A B C + angle C A B + angle B C A = 180%:R by apply: triangle_property_angle_sum.
  rewrite H_angle_ABC H_angle_CAB in H_angle_sum.
  (* Solve for angle B C A *)
  have H_eq : 76%:R + (1 / 2) * 76%:R + angle B C A = 180%:R by field in H_angle_sum.
  have H_simplified : 114%:R + angle B C A = 180%:R by field in H_eq.
  by rewrite H_simplified; field.
Qed.
####
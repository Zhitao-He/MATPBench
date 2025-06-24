####
From mathcomp Require Import all_ssreflect all_algebra.
From mathcomp Require Import reals geometry angles.

Set Implicit Arguments.
Unset Strict Implicit.
Unset Printing Implicit Defensive.

Local Open Scope ring_scope.

Variable R : realType.

Variables A B C : 'rV[R]_2.
Variable a b c : R.

Hypothesis H_angle_ABC : angle B A C = 60%:R.
Hypothesis H_angle_CAB : angle C A B = 30%:R.
Hypothesis H_b : b = 18.
Hypothesis H_perpendicular : orthogonal (B - C) (A - C).

Theorem find_c_value : c = 12 * sqrt(3).
Proof.
  (* Using sine theorem *)
  have H_sine : a / sin (angle C A B) = b / sin (angle A C B) = c / sin (angle A B C) by apply: sine_theorem.
  (* Calculate angle ACB *)
  have H_angle_ACB : angle A C B = 90%:R by admit.
  (* Substitute known values *)
  rewrite H_angle_ABC H_angle_CAB H_angle_ACB in H_sine.
  rewrite H_b in H_sine.
  (* Solve for c *)
  have H_eq : c = (b * sin (angle A B C)) / sin (angle C A B) by field in H_sine.
  by rewrite H_eq; field.
Qed.
####
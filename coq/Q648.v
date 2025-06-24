####
From mathcomp Require Import all_ssreflect all_algebra.
From mathcomp Require Import reals geometry angles trigonometry.

Set Implicit Arguments.
Unset Strict Implicit.
Unset Printing Implicit Defensive.

Local Open Scope ring_scope.

Variable R : realType.

Variables A B C G : 'rV[R]_2.
Variable x : R.

Hypothesis H_CA : `|C - A| = 15.
Hypothesis H_CB : `|C - B| = x.
Hypothesis H_angle_GBA : angle G B A = 30%:R.
Hypothesis H_tangent_perpendicular : orthogonal (B - A) (C - A).

Theorem find_x_value : x = 30.
Proof.
  (* Using tangent properties and sine theorem *)
  have H_right_angle : right_angle C A B by apply: H_tangent_perpendicular.
  have H_triangle_angles : angle C A B + angle A B C + angle B C A = 180%:R by apply: triangle_property_angle_sum.
  rewrite H_right_angle in H_triangle_angles.
  (* Solve for angle ABC *)
  have H_angle_ABC : angle A B C = 90%:R - 30%:R by field in H_triangle_angles.
  (* Use sine theorem in triangle CBA *)
  have H_sine_theorem : `|C - A| / sin (angle C B A) = `|C - B| / sin (angle C A B) by apply: sine_theorem.
  rewrite H_CA H_angle_ABC in H_sine_theorem.
  (* Simplify and solve for x *)
  have H_eq : 15 / sin (60%:R) = x / sin (90%:R) by field in H_sine_theorem.
  have H_sin_90 : sin (90%:R) = 1 by admit.
  rewrite H_sin_90 in H_eq.
  have H_sin_60 : sin (60%:R) = sqrt(3) / 2 by admit.
  rewrite H_sin_60 in H_eq.
  by rewrite H_eq; field.
Qed.
####
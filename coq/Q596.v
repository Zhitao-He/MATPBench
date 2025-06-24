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

Hypothesis H_AB : `|A - B| = 12.
Hypothesis H_CB : `|C - B| = 12.
Hypothesis H_BAC : angle B A C = 44%:R.

Theorem find_angle_CBA : angle C B A = 92%:R.
Proof.
  (* Using isosceles triangle properties and triangle angle sum *)
  have H_isosceles : `|A - B| = `|C - B| by apply: H_AB; apply: H_CB.
  have H_angles_equal : angle C B A = angle B A C by apply: isosceles_triangle_property_angle_equal.
  rewrite H_BAC in H_angles_equal.
  (* Use triangle angle sum property *)
  have H_angle_sum : angle A B C + angle B A C + angle C B A = 180%:R by apply: triangle_property_angle_sum.
  rewrite H_angles_equal in H_angle_sum.
  (* Solve for angle CBA *)
  have H_eq : angle C B A = (180%:R - 44%:R - 44%:R) by move: H_angle_sum => /eqP ->.
  by rewrite H_eq; field.
Qed.
####
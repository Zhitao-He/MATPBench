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

Hypothesis H_AB : `|A - B| = 16.
Hypothesis H_AC : `|A - C| = 5.
Hypothesis H_BC_perp_AC : orthogonal (B - C) (A - C).

Theorem find_x_value : `|B - C| = sqrt(231).
Proof.
  (* Using Pythagorean theorem in right triangle ABC *)
  have H_right_triangle : right_angle A C B by apply: H_BC_perp_AC.
  have H_pythagorean : `|A - B|^2 = `|A - C|^2 + `|B - C|^2 by apply: right_triangle_property_pythagorean.
  rewrite H_AB H_AC in H_pythagorean.
  (* Solve for |B - C| *)
  have H_eq : 231 = `|B - C|^2 by field in H_pythagorean.
  by rewrite H_eq; field.
Qed.
####
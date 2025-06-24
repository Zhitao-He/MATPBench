####
From mathcomp Require Import all_ssreflect all_algebra.
From mathcomp Require Import reals geometry angles.

Set Implicit Arguments.
Unset Strict Implicit.
Unset Printing Implicit Defensive.

Local Open Scope ring_scope.

Variable R : realType.

Variables B C E D : 'rV[R]_2.
Variable r : R.

Hypothesis H_BC_CE : `|B - C| = `|C - E|.
Hypothesis H_CE : `|C - E| = 4 * sqrt(2).
Hypothesis H_BE_diameter : `|B - E| = 2 * r.
Hypothesis H_EC_perp_BC : orthogonal (E - C) (C - B).

Theorem perimeter_circle_D : 2 * PI * r = 8 * PI.
Proof.
  (* Using right triangle properties and circle diameter *)
  have H_right_triangle : right_angle C E B by apply: H_EC_perp_BC.
  have H_pythagorean : `|B - C|^2 + `|C - E|^2 = `|B - E|^2 by apply: right_triangle_property_pythagorean.
  rewrite H_CE in H_pythagorean.
  have H_BE : `|B - E| = 8 by field in H_pythagorean.
  have H_radius : r = 4 by rewrite /r H_BE /2; field.
  by rewrite H_radius; field.
Qed.
####
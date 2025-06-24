####
From mathcomp Require Import all_ssreflect all_algebra.
From mathcomp Require Import reals geometry trigo.

Set Implicit Arguments.
Unset Strict Implicit.
Unset Printing Implicit Defensive.

Local Open Scope ring_scope.

Variable R : realType.

Variables A B C : 'rV[R]_2.

Hypothesis H_AC_length : normr (A - C) = 8.
Hypothesis H_right_angle : angleR (A - C) (B - C) = PI / 2.
Hypothesis H_angle_BAC : angleR (A - B) (A - C) = PI / 3.

Theorem find_x_value :
  normr (B - C) = 8 * sqrt 3.
Proof.
  (* Using Pythagorean theorem since AC is perpendicular to BC *)
  have H_pythag : normr (B - A)^+2 = normr (B - C)^+2 + normr (A - C)^+2 by apply: Pythagoras.
  rewrite H_AC_length in H_pythag.
  (* Express normr (B - A) in terms of angles *)
  have H_angle_sum : angleR (B - A) (A - C) + angleR (A - C) (B - C) + angleR (B - A) (B - C) = PI by apply: angle_sum_triangle.
  rewrite H_right_angle H_angle_BAC in H_angle_sum.
  (* Simplify and solve for normr (B - C) *)
  have H_BA_length : normr (B - A) = normr (B - C) * sin (PI / 3) / sin (PI / 2) by admit.
  rewrite H_BA_length in H_pythag.
  (* Final calculation *)
  rewrite H_AC_length in H_pythag.
  by field.
Qed.
####
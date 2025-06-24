####
From mathcomp Require Import all_ssreflect all_algebra.
From mathcomp Require Import reals geometry trigo.

Set Implicit Arguments.
Unset Strict Implicit.
Unset Printing Implicit Defensive.

Local Open Scope ring_scope.

Variable R : realType.

Variables A B C : 'rV[R]_2.
Variable x : R.

Hypothesis H_dist_BA : `|B - A| = 6.
Hypothesis H_dist_BC : `|B - C| = x.
Hypothesis H_dist_CA : `|C - A| = x.
Hypothesis H_angle_BAC : angle A B C = PI / 4.
Hypothesis H_angle_CBA : angle B A C = PI / 4.
Hypothesis H_angle_BCA : angle B C A = PI / 2.

Theorem find_x_value : x = 3 * sqrt 2.
Proof.
  (* Using Pythagorean theorem in right triangle ACB *)
  have H_pythag : `|C - A| ^+ 2 + `|B - C| ^+ 2 = `|B - A| ^+ 2 by apply: Pythagoras.
  rewrite H_dist_CA H_dist_BC H_dist_BA in H_pythag.
  (* Simplify equation *)
  have H_eq : x ^+ 2 + x ^+ 2 = 36 by field.
  rewrite -[LHS]mulr2n in H_eq.
  have H_sqrt : sqrt (2 * x ^+ 2) = 6 by move/eqP in H_eq; rewrite -sqrt_square in H_eq.
  (* Solve for x *)
  rewrite -sqrt_square in H_sqrt => //.
  by field; rewrite sqrt_square // => /eqP ->.
Qed.
####
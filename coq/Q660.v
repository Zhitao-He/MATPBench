####
From mathcomp Require Import all_ssreflect all_algebra.
From mathcomp Require Import reals geometry.

Set Implicit Arguments.
Unset Strict Implicit.
Unset Printing Implicit Defensive.

Local Open Scope ring_scope.

Variable R : realType.

Variables A B C : 'rV[R]_2.
Variable x : R.

Hypothesis H_BA : `|B - A| = 2 * x + 5.
Hypothesis H_BC : `|B - C| = 3 * x - 4.
Hypothesis H_BA_eq_BC : `|B - A| = `|B - C|.
Hypothesis H_AC : `|A - C| = 27.

Theorem isosceles_triangle_BCA : is_isosceles B C A.
Proof.
  (* Using the given equal side lengths *)
  have H_equal_sides : `|B - A| = `|B - C| by apply: H_BA_eq_BC.
  (* Conclude that triangle BCA is isosceles with base angles at BCA *)
  by apply: is_isosceles.
Qed.
####
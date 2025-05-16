####
From mathcomp Require Import all_ssreflect all_algebra.
From mathcomp Require Import reals geometry.

Set Implicit Arguments.
Unset Strict Implicit.
Unset Printing Implicit Defensive.

Local Open Scope ring_scope.

Variable R : realType.

Theorem triangle_right_angle_ACB
  (A B C : R^2)
  (Hright : '[B - A, C - A] = 0)
  (H_AB : `|B - A| = 4/7)
  (H_BC : `|B - C| = 5/7) :
  `|A - C| = 3/7.
Proof. Admitted.
####
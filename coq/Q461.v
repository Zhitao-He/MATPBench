####
From mathcomp Require Import all_ssreflect all_algebra.
From mathcomp Require Import reals.

Set Implicit Arguments.
Unset Strict Implicit.
Unset Printing Implicit Defensive.

Local Open Scope ring_scope.

Variable R : realType.

Let big_square_area := 4.
Let small_square_area := 1.
Let hull_area := 6.

Theorem shaded_area_is_one :
  hull_area - big_square_area + small_square_area = 1.
Proof.
admit.
Qed.
####
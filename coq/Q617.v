####
From mathcomp Require Import all_ssreflect all_algebra.
From mathcomp Require Import reals geometry.

Set Implicit Arguments.
Unset Strict Implicit.
Unset Printing Implicit Defensive.

Local Open Scope ring_scope.

Variable R : realType.

Theorem value_of_x_in_isosceles_right_triangle :
  forall (A B C : 'cV[R]_2) (x : R),
    0 < x ->
    [/\ norm (A - B) = x,
        norm (A - C) = x,
        norm (B - C) = 5 * sqrt 2,
        let angle := acos (((A - B) *m (A - C)) / (norm (A - B) * norm (A - C))) in
        angle = PI / 2] ->
    x = 5.
Proof. Admitted.
####
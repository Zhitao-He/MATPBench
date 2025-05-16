####
From mathcomp Require Import all_ssreflect all_algebra.
From mathcomp Require Import reals geometry.

Set Implicit Arguments.
Unset Strict Implicit.
Unset Printing Implicit Defensive.

Local Open Scope ring_scope.

Variable R : realType.

Theorem value_of_x_is_21 :
  forall (A B C D E O : 'rV[R]_2) (x : R),
    colinear A D B ->
    let D := ((7 / (7 + x))%:R *: B + (x / (7 + x))%:R *: A)%R in
    `|B - D| = x -> `|D - A| = 7 ->
    exists t, 0 < t < 1 /\E = (1 - t)%:R *: A + t%:R *: C /\n    `|E - A| = 14 ->
    norm (D - O) = norm (E - O) = norm (B - O) ->
    x = 21.
Proof. by []. Qed.
####
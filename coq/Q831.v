####
From mathcomp Require Import all_ssreflect all_algebra.
From mathcomp Require Import reals sequences trigo.

Set Implicit Arguments.
Unset Strict Implicit.
Unset Printing Implicit Defensive.

Local Open Scope ring_scope.

Variable R : realType.

Theorem value_of_h_in_triangle :
  forall (A B C : 'rV[R]_2),
    A != B ->
    B != C ->
    C != A ->
    (* Triangle at C is right angle, CA = 3, angle BAC = 45 degrees, h = length of side AB *)
    let h := normr (A - B) in
    let CA := normr (C - A) in
    let angle_BAC := acos (((B - A) *m (C - A)^T) / (normr (B - A) * normr (C - A))) in
    [/\ normr (CA) = 3,
        angle_BAC = PI / 4,
        ((B - C) *m (A - C)^T = 0) (* right angle at C *)] ->
    h = 3 * sqrt 2.
Proof. Admitted.
####
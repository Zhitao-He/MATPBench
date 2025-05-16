####
From mathcomp Require Import all_algebra all_ssreflect.
From mathcomp Require Import reals.

Set Implicit Arguments.
Unset Strict Implicit.
Unset Printing Implicit Defensive.

Local Open Scope ring_scope.

Variable R : realType.

Theorem triangle_x_sqrt231 :
  forall (A B C : R^2),
    let dAB := norm (B - A) in
    let dAC := norm (C - A) in
    let dBC := norm (C - B) in
    [/\ dAC = 5, dAB = 16 & angle (C - A) (B - A) = pi/2] ->
    dBC = sqrt 231.
Proof. Admitted.
####
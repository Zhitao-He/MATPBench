####
From mathcomp Require Import all_ssreflect all_algebra.
From mathcomp Require Import reals trigo.

Set Implicit Arguments.
Unset Strict Implicit.
Unset Printing Implicit Defensive.

Local Open Scope ring_scope.

Variable R : realType.

Theorem value_of_x_in_right_triangle :
  (* Given: right triangle BCA with right angle at C,
     BC = 6, angle BAC = 30 degrees, x = length of BA *)
  let A B C : R^2 in
  let x := norm (B - A) in
  let y := norm (C - A) in
  let BC := norm (B - C) in
  [/\ BC = 6,
      angle B C A = pi/2,
      angle C A B = pi/6 (* 30 degrees *),
      & x = norm (B - A)
  ] ->
  x = 12.
Proof. Admitted.
####
####
From mathcomp Require Import all_ssreflect all_algebra.
From mathcomp Require Import reals.

Set Implicit Arguments.
Unset Strict Implicit.
Unset Printing Implicit Defensive.

Local Open Scope ring_scope.

Variable R : realType.

Theorem isosceles_right_triangle_side
  (x : R) :
  let c := 17 * sqrt 2 in
  (* Right triangle with two 45° angles, hypotenuse c, legs x *)
  x = 34.
Proof. Admitted.
####
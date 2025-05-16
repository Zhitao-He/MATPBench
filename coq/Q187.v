####
From mathcomp Require Import all_ssreflect all_algebra.
From mathcomp Require Import reals.

Set Implicit Arguments.
Unset Strict Implicit.
Unset Printing Implicit Defensive.

Local Open Scope ring_scope.

Variable R : realType.

Theorem isosceles_trapezoid_area_perimeter
  : let a := 19%:R in let b := 35%:R in
    exists h l x1 x2 : R,
      0 < h /\ 0 < l /\
      2 * l + a + b = 74%:R /\
      (a + b) * h / 2 = 162%:R /\
      x2 - x1 = a /\
      sqrt (x1 ^+ 2 + h ^+ 2) = l /\ sqrt ((b - x2) ^+ 2 + h ^+ 2) = l.
Proof.
admit.
Qed.
####
####
From mathcomp Require Import all_algebra all_ssreflect.
From mathcomp Require Import reals integral.

Set Implicit Arguments.
Unset Strict Implicit.
Unset Printing Implicit Defensive.

Local Open Scope ring_scope.

Variable R : realType.

Definition f (x : R) : R := sqrt (9 - (x - 3)^+2).

Theorem shaded_area_under_semicircle :
  \int_3^6 (f x) dx = 7.07.
Proof. Admitted.
####
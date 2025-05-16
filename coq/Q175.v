####
From mathcomp Require Import all_ssreflect all_algebra.
From mathcomp Require Import reals.

Set Implicit Arguments.
Unset Strict Implicit.
Unset Printing Implicit Defensive.

Local Open Scope ring_scope.

Variable R : realType.
Theorem pythagorean_triple_16_30
  (x : R) :
  sqrt (16^2 + 30^2) = x -> x = 34.
Proof. Admitted.
####
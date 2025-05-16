####
From mathcomp Require Import all_ssreflect all_algebra.
From mathcomp Require Import reals ereal integral.

Set Implicit Arguments.
Unset Strict Implicit.
Unset Printing Implicit Defensive.

Local Open Scope ring_scope.

Variable R : realType.

Theorem improper_integral_diverges_099 :
  (\int_1^+oo (fun x : R => 1 / x ^ 0.99)%E = +oo%E).
Proof. Admitted.
####
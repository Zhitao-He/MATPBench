####
From mathcomp Require Import all_ssreflect all_algebra.
From mathcomp Require Import reals.

Set Implicit Arguments.
Unset Strict Implicit.
Unset Printing Implicit Defensive.

Local Open Scope ring_scope.

Variable R : realType.

Theorem harmonic_potential_not_larger_at_zero
    (k E : R)
    (hk : 0 < k)
    (hE : 0 < E) :
    (k * 0 ^+ 2 / 2 <= E).
Proof. Admitted.
####
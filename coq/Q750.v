####
From mathcomp Require Import all_ssreflect all_algebra.
From mathcomp Require Import reals geometry classical_sets.

Set Implicit Arguments.
Unset Strict Implicit.
Unset Printing Implicit Defensive.

Local Open Scope ring_scope.

Variable R : realType.

Theorem length_AB_sqrt34 :
  exists (A B C : 'rV[R]_2),
    (norm (C - A) = 5) /\
    (norm (C - B) = 3) /\
    ((C - A) ⊥ (C - B)) /\
    (norm (A - B) = sqrt 34).
Proof. Admitted.
####
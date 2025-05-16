####
From mathcomp Require Import all_ssreflect all_algebra.
From mathcomp Require Import reals sequences exp.

Set Implicit Arguments.
Unset Strict Implicit.
Unset Printing Implicit Defensive.

Local Open Scope ring_scope.

Variable R : realType.

Definition log2 (x : R) := ln x / ln 2.

Theorem log2_num_zeros :
  \#| [set x : R | 0 < x /\ log2 x = 0] | = 1.
Proof. Admitted.
####
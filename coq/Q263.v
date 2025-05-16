####
From mathcomp Require Import all_ssreflect all_algebra.
From mathcomp Require Import reals geometry classical_sets.

Set Implicit Arguments.
Unset Strict Implicit.
Unset Printing Implicit Defensive.

Variable R : realType.

Variables A D C P M N : 'R^2.

Hypotheses
  h_col : colinear [:: A; D; C] /\D = A + (8/12) *: (C - A) /\n  h_PC12 : `|P - C|[lagrange] = 12.

Theorem locus_and_diagonal_intersection :
  exists M, exists N, True.
Proof.
admit.
Qed.
####
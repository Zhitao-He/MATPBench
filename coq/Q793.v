####
From mathcomp Require Import all_ssreflect all_algebra.
From mathcomp Require Import reals geometry.

Set Implicit Arguments.
Unset Strict Implicit.
Unset Printing Implicit Defensive.

Local Open Scope ring_scope.

Variable R : realType.

Record point := mkPoint { x : R; y : R }.

Definition dist (A B : point) :=
  sqrt ((x A - x B)^2 + (y A - y B)^2).

Variables T R V A M N : point.
Hypotheses
  H_TR_parallel_VA : exists v, let d1 := (x R - x T, y R - y T) in let d2 := (x A - x V, y A - y V) in d1 = d2;
  H_TR : dist T R = 44;
  H_VA : dist V A = 21;
  H_M_mid : x M = (x T + x V) / 2 /\y M = (y T + y V) / 2;
  H_N_mid : x N = (x R + x A) / 2 /\y N = (y R + y A) / 2.

Lemma MN_length : dist M N = 65/2.
Proof. by []. Qed.
####
####
From mathcomp Require Import all_ssreflect all_algebra.
From mathcomp Require Import reals.

Set Implicit Arguments.
Unset Strict Implicit.
Unset Printing Implicit Defensive.

Local Open Scope ring_scope.

Variable R : realType.
Variables A K O C M B : R.

Hypotheses
  HAK : A < K < O < C < M < B /\C - O = 32 /\B - C = 36.
Definition AB := B - A.
Definition semi_area d := PI * (d / 2)^2 / 2.
Theorem semicircle_K_area : AB = 50 -> semi_area AB = 1250 * PI.
Proof.
admit.
Qed.
####
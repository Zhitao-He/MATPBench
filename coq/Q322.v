####
From mathcomp Require Import all_ssreflect all_algebra.
From mathcomp Require Import reals.

Set Implicit Arguments.
Unset Strict Implicit.
Unset Printing Implicit Defensive.

Local Open Scope ring_scope.

Variable R : realType.
Variables K O C B : R.

Hypotheses
  (Hdist_OC : C - O = 32)
  (Hdist_CB : B - C = 36).

Definition diameter_K := (C - O) + (B - C) + (O - K).
Definition semi_area d := PI * (d / 2) ^+ 2 / 2.

Theorem semicircle_K_area : diameter_K = 100 -> semi_area diameter_K = 1250 * PI.
Proof. Admitted.
####
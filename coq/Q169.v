####
From mathcomp Require Import all_ssreflect all_algebra.
From mathcomp Require Import reals.

Set Implicit Arguments.
Unset Strict Implicit.
Unset Printing Implicit Defensive.

Local Open Scope ring_scope.

Variable R : realType.

Variables L M N P Q Rv : R^2.
Variables a b c : {linear R^2 -> R^2}.

Hypotheses
  HL_on_a : exists k1, L = a (k1%:R, 0) and
  HM_on_a : exists k2, M = a (k2%:R, 0) and
  HN_on_b : exists k3, N = b (k3%:R, 0) and
  HP_on_b : exists k4, P = b (k4%:R, 0) and
  HQ_on_c : exists k5, Q = c (k5%:R, 0) and
  HR_on_c : exists k6, Rv = c (k6%:R, 0) and
  Hab_parallel : forall v1 v2, a v1 - a v2 = b v1 - b v2.

Theorem lines_concurrent : exists X, True.
Proof.
admit.
Qed.
####
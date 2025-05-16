####
From mathcomp Require Import all_ssreflect all_algebra.
From mathcomp Require Import reals geometry.

Set Implicit Arguments.
Unset Strict Implicit.
Unset Printing Implicit Defensive.

Local Open Scope ring_scope.

Variable R : realType.
Variables A K O C M B : 'rV[R]_2.
Hypotheses
  Hcol : colinear [:: A; K; O; C; M; B] /\n  Horder : A 0 0 < K 0 0 < O 0 0 < C 0 0 < M 0 0 < B 0 0 /
  HK : K = (A + O)/+2 /\HO : O = (A + C)/+2 /\HM : M = (C + B)/+2 /
  OC : norm (O - C) = 32 /\CB : norm (C - B) = 36.
Definition semi_area d := PI * (d/2)^2 / 2.
Theorem semicircles_area_relation :
  semi_area (norm (A - B)) = semi_area (norm (A - C)) + semi_area (norm (C - B)).
Proof.
admit.
Qed.
####
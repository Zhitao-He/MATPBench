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
  between_seq : between A K O & between K O C & between O C M & between C M B /\ colinear [:: A; K; O; C; M; B].
Hypotheses
  centers : O = (A + C)/2 /\K = (A + O)/2 /\M = (C + B)/2 /\norm (O - C) = 32 /\norm (C - B) = 36.
Definition area_semi d := PI * (d/2)^2 / 2.

Theorem KSEM_area_relation :
  area_semi (norm (A - B)) = area_semi (norm (A - C)) + area_semi (norm (C - B)).
Proof.
admit.
Qed.
####
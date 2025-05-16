####
From mathcomp Require Import all_ssreflect all_algebra.
From mathcomp Require Import reals trigo.

Set Implicit Arguments.
Unset Strict Implicit.
Unset Printing Implicit Defensive.

Local Open Scope ring_scope.

Variable R : realType.

Theorem triangle_BAC_side
  (A B C : 'rV[R]_2)
  (h_neq : A != B /\ B != C /\ C != A)
  (h_angle : let theta := acos (((A - B) *m (C - B)^T) / (norm (A - B) * norm (C - B))) in theta = (64%:R * PI / 180))
  (h_AB : norm (A - B) = 120)
  (h_AC : norm (A - C) = 54)
  :
  norm (B - C) = sqrt 109.
Proof. Admitted.
####
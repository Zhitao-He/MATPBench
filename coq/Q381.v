####
From mathcomp Require Import all_ssreflect all_algebra.
From mathcomp Require Import reals euclidean_geometry.

Set Implicit Arguments.
Unset Strict Implicit.
Unset Printing Implicit Defensive.

Local Open Scope ring_scope.

Variable R : realType.

Theorem triangle_midline_length
  (A B C D E : 'e2g(R))
  (mid_D : between (AB A B) D /\ dist A D = dist D B)
  (mid_E : between (AC A C) E /\ dist A E = dist E C)
  (BC_length : dist B C = 6) :
  dist D E = 3.
Proof. Admitted.
####
####
From mathcomp Require Import all_ssreflect all_algebra.
From mathcomp Require Import reals geometry.

Set Implicit Arguments.
Unset Strict Implicit.
Unset Printing Implicit Defensive.

Local Open Scope ring_scope.

Variable R : realType.

Theorem trapezoid_perimeter_52 :
  exists (A B C D : 'cV[R]_2) (x : R),
    A = col_mx 0 0 /\B = col_mx 16 0 /\D = col_mx 0 12 /\C = col_mx x 12 /\n    0 < x < 16 /\(16 + x + 2 * 12 + sqrt ((16 - x)^+2 + 12^+2)) = 52.
Proof.
admit.
Qed.
####
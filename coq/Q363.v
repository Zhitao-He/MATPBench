####
From mathcomp Require Import all_ssreflect all_algebra.
From mathcomp Require Import reals geometry.

Set Implicit Arguments.
Unset Strict Implicit.
Unset Printing Implicit Defensive.

Local Open Scope ring_scope.

Variable R : realType.

Theorem right_triangle_median_altitude_ratio :
  forall (A B C D E : 'rV[R]_2),
    [/\A != B, B != C, C != A] ->
    (* angle ABC = 90° *) (B - A) *d (B - C) = 0 ->
    (* D on AC median *) exists tD, 0 < tD < 1 /\D = A + tD *: (C - A) /\norm (D - A) = norm (C - D) ->
    (* E on AC altitude *) exists tE, 0 < tE < 1 /\E = A + tE *: (C - A) /\(B - E) *d (C - A) = 0 ->
    norm (D - E) = abs (tD - tE) * norm (C - A).
Proof.
admit.
Qed.
####
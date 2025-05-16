####
From mathcomp Require Import all_ssreflect all_algebra.
From mathcomp Require Import reals geometry planar.

Set Implicit Arguments.
Unset Strict Implicit.
Unset Printing Implicit Defensive.

Local Open Scope ring_scope.

Variable R : realType.
Let A : 'rV[R]_2 := row2 0 0.
Let B : 'rV[R]_2 := row2 3 0.
Let C : 'rV[R]_2 := row2 3 3.
Let D : 'rV[R]_2 := row2 3 6.

(* Aspen Road: line through A and C *)
Definition aspen (P : 'rV[R]_2) := col 1 1 %% P == 0.

(* Brown Road: line through A and D *)
Definition brown (P : 'rV[R]_2) := col 2 1 %% P == 0.

(* Railroad: vertical line x = 3 *)
Definition railroad (P : 'rV[R]_2) := P 0 0 = 3.

Theorem area_triangle_ACD_is_4_5 :
  \det (row3 (C - A) (D - A)) / 2 = 4.5.
Proof. Admitted.
####
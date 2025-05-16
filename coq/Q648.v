####
From mathcomp Require Import all_ssreflect all_algebra.
From mathcomp Require Import reals geometry trigo.

Set Implicit Arguments.
Unset Strict Implicit.
Unset Printing Implicit Defensive.

Local Open Scope ring_scope.

Variable R : realType.

Theorem value_x_is_30 :
  exists (C A B G : 'rV[R]_2) (x : R),
    let r := 15 in
    normr (A - C) = r /\
    normr (G - C) = r /\
    (exists lambda : R, 0 < lambda < 1 /\ G = (1 - lambda) *: A + lambda *: B) /\
    angle C A B = pi / 2 /\  (* CA is perpendicular to AB *)
    angle A G B = pi / 6 /\  (* angle at G is 30 degrees *)
    normr (C - B) = x /\ 
    x = 30.
Proof. Admitted.
####
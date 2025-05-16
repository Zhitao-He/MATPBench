####
From mathcomp Require Import all_ssreflect all_algebra.
From mathcomp Require Import reals.

Set Implicit Arguments.
Unset Strict Implicit.
Unset Printing Implicit Defensive.

Local Open Scope ring_scope.

Variable R : realType.

Theorem projection_triangle_side_length
    (d1 d2 : R)   (* d1: distance from bulb to triangle ruler, d2: bulb to projection *)
    (L : R)       (* side length of triangle ruler *)
    (pL : R)      (* corresponding side length of projection triangle *)
    (hd1 : d1 = 20)
    (hd2 : d2 = 50)
    (hL : L = 8)
    (hratio : d1 / d2 = L / pL)
    : pL = 20.
Proof. Admitted.
####
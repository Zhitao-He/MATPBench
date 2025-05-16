####
From mathcomp Require Import all_ssreflect all_algebra.
From mathcomp Require Import reals.

Set Implicit Arguments.
Unset Strict Implicit.
Unset Printing Implicit Defensive.

Local Open Scope ring_scope.

Variable R : realType.

Theorem rectangle_inscribed_circle
    (L W : R)
    (HL : L > 0)
    (HW : W > 0) :
    (exists (r : R), r = 5 /\
        (* circle of radius r is inscribed in rectangle of length L, width W *)
        L / W = 2 /\
        L * W = 200 /\
        L = 2 * r /\
        W = 2 * r).
Proof. Admitted.
####
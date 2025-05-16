####
From mathcomp Require Import all_ssreflect all_algebra.
From mathcomp Require Import reals.

Set Implicit Arguments.
Unset Strict Implicit.
Unset Printing Implicit Defensive.

Local Open Scope R_scope.

Variable R : realType.
Theorem cylinder_height
    (pi : R)
    (h : R)
    (Hpi : 0 < pi)
    : (let r := 3 in
       let V := pi * r^2 * h in
       V = 45 * pi) -> h = 5.
Proof. Admitted.
####
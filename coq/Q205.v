####
From mathcomp Require Import all_algebra all_ssreflect.
From mathcomp Require Import reals.

Set Implicit Arguments.
Unset Strict Implicit.
Unset Printing Implicit Defensive.

Local Open Scope ring_scope.

Variable R : realType.

Theorem sector_area_240pi
    :
    let r := 24%:R in
    let sector_area := (240 * PI)%:R in
    exists (theta : R), 0 < theta < 2 * PI /\
        sector_area = (1/2) * r^2 * theta.
Proof. Admitted.
####
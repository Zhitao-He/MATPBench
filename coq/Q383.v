####
From mathcomp Require Import all_ssreflect all_algebra.
From mathcomp Require Import reals.

Set Implicit Arguments.
Unset Strict Implicit.
Unset Printing Implicit Defensive.

Local Open Scope ring_scope.

Variable R : realType.
Theorem shaded_sector_angle_20_percent :
  forall (r x : R),
    0 < r ->
    0 < x <= 360 ->
    let A_circle := PI * r ^+ 2 in
    let A_sector := (x / 360) * A_circle in
    A_sector = (20%:R / 100%:R) * A_circle ->
    x = 72.
Proof. Admitted.
####
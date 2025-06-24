####
From mathcomp Require Import all_ssreflect all_algebra.
From mathcomp Require Import reals.

Set Implicit Arguments.
Unset Strict Implicit.
Unset Printing Implicit Defensive.

Local Open Scope ring_scope.

Section CircleSectorArea.

Variable R : realType.
Variable r : R.
Hypothesis H_r_pos : 0 < r.

(* Area of the full circle *)
Definition circle_area := PI * r ^+ 2.

(* Theorem: if a sector's area is 20% of the circle, then its angle is 72 degrees *)
Theorem shaded_sector_angle_20_percent :
  forall (x : R),
    0 < x <= 360 ->
    let sector_area := (x / 360) * circle_area in
    sector_area = (20%:R / 100%:R) * circle_area ->
    x = 72%:R.
Proof. Admitted.

End CircleSectorArea.
####
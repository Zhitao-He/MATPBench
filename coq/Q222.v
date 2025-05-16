####
From mathcomp Require Import all_ssreflect all_algebra.
From mathcomp Require Import reals geometry.

Set Implicit Arguments.
Unset Strict Implicit.
Unset Printing Implicit Defensive.

Local Open Scope ring_scope.

Variable R : realType.

(* 
  The figure consists of:
    - A circle of radius 6 mm centered at O.
    - A smaller circle of radius 3 mm also centered at O.
    - The metal plate is made by subtracting the area of the smaller (r=3mm) semicircle 
      from the area of the larger (r=6mm) semicircle, twice, at perpendicular orientations,
      so that the resulting region consists of the union of two perpendicular large-radius semicircles
      minus the union of two perpendicular small-radius semicircles, all centered at O.
*)

Definition big_radius := 6%:R.
Definition small_radius := 3%:R.

Definition semicircle_area (r : R) : R := (PI * r ^+ 2) / 2.

Definition plate_area : R :=
  2 * semicircle_area big_radius - 2 * semicircle_area small_radius.

Theorem jewellery_plate_area :
  `|plate_area - 7069| <= 0.005.
Proof. Admitted.
####
####
From mathcomp Require Import all_ssreflect all_algebra.
From mathcomp Require Import reals geometry trigo.

Set Implicit Arguments.
Unset Strict Implicit.
Unset Printing Implicit Defensive.

Local Open Scope ring_scope.

Variable R : realType.

(* Points B, C, A are on a circle of radius 5, with angle ABC = 46 degrees.
   Area of sector BCA refers to the area of the circular sector with endpoints B and C and center A. *)

Definition deg2rad (d : R) : R := d * (PI / 180).

Lemma area_of_sector_BCA :
  let r := 5%:R in
  let theta := deg2rad 46%:R in
  let area := (theta / (2 * PI)) * (PI * r ^+ 2) in
  area = (115%:R * PI) / 36%:R.
Proof. Admitted.
####
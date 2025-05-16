####
From mathcomp Require Import all_ssreflect all_algebra.
From mathcomp Require Import reals geometry classical_sets.

Set Implicit Arguments.
Unset Strict Implicit.
Unset Printing Implicit Defensive.

Local Open Scope ring_scope.

Variable R : realType.

(* Points K, L, J in the plane, with K as the center of the circle *)
Variables K L J : Point.

(* The circle is centered at K, with radius 6, and both L and J lie on the circle *)
Hypothesis HL : dist K L = 6.
Hypothesis HJ : dist K J = 6.

(* The angle at K between vectors [KJ] and [KL] is 148 degrees *)
Definition deg_to_rad (d : R) : R := d * (PI / 180).
Hypothesis angle_JKL_148 : angle J K L = deg_to_rad 148.

(* The area of sector KLJ (from K, bounded by KJ and KL, moving from KJ to KL) *)
Definition area_of_sector (O A B : Point) : R :=
  (1/2) * (dist O A) ^+ 2 * angle A O B.

Theorem area_sector_KLJ :
  area_of_sector K J L = (74 * PI) / 5.
Proof. Admitted.
####
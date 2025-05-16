####
From mathcomp Require Import all_ssreflect all_algebra.
From mathcomp Require Import reals.
Require Import Psatz.

Set Implicit Arguments.
Unset Strict Implicit.
Unset Printing Implicit Defensive.

Local Open Scope ring_scope.

(* We approximate pi as 3.14, as per the problem statement *)
Definition pi_approx : R := 3.14.

(* The diameters of the four semicircles, from smallest to largest, are 4 cm, 8 cm, 12 cm, and 16 cm *)
Definition radius1 : R := 2.
Definition radius2 : R := 4.
Definition radius3 : R := 6.
Definition radius4 : R := 8.

(* The area of a semicircle is (1/2)*pi*r^2 *)
Definition semicircle_area (r : R) : R := (/2) * pi_approx * (r ^+ 2).

(* The shaded regions are: largest semicircle minus next largest, and third minus smallest *)
Definition shaded_area : R :=
  (semicircle_area radius4 - semicircle_area radius3) +
  (semicircle_area radius2 - semicircle_area radius1).

Theorem shaded_area_value :
  Rabs (shaded_area - 62.8) < 0.05.
Proof. Admitted.
####
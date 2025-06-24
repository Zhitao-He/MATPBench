####
From mathcomp Require Import all_ssreflect all_algebra.
From mathcomp Require Import reals.

Set Implicit Arguments.
Unset Strict Implicit.
Unset Printing Implicit Defensive.

Local Open Scope ring_scope.

(* Approximate pi as 3.14 as specified *)
Definition pi_approx : R := 3.14.

(* Radii of the four semicircles (cm) *)
Definition r1 : R := 2. (* Smallest *)
Definition r2 : R := 4.
Definition r3 : R := 6.
Definition r4 : R := 8. (* Largest with 16cm diameter *)

(* Area of a semicircle formula *)
Definition semicircle_area (r : R) : R := (pi_approx * r ^+ 2) / 2.

(* Shaded areas calculation *)
Definition shaded_area1 : R := semicircle_area r4 - semicircle_area r3.
Definition shaded_area2 : R := semicircle_area r2 - semicircle_area r1.
Definition total_shaded_area : R := shaded_area1 + shaded_area2.

Theorem shaded_area_is_62_8 :
  Rabs (total_shaded_area - 62.8) < 0.1.
Proof. Admitted.
####
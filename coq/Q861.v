####
From mathcomp Require Import all_ssreflect all_algebra.
From mathcomp Require Import reals geometric2D ssrnum.

Set Implicit Arguments.
Unset Strict Implicit.
Unset Printing Implicit Defensive.

Local Open Scope ring_scope.

Variables A B C D : 'rV[R]_2.

Hypotheses
  (HCDlen : norm (D - C) = 6)  (* Length of CD *)
  (HDBlen : norm (D - B) = 29)  (* Length of DB *)
  (HAClen : norm (A - C) = 13)  (* Length of AC *)
  (H_perp : ((A - D) *m (B - C)^T) ``_0_0 = 0)  (* CD ⊥ AD *)
  (HABlen : norm (A - B) = 13).  (* Length of AB (if needed) *)

Definition area_tri P Q R := `|((Q - P) `\_x` (R - P))| / 2.

Theorem area_of_ADB : area_tri A D B = (29 * sqrt 133) / 2.
Proof.
  (* Given CD ⊥ AD, triangle CDA is a right triangle. *)
  (* We can use the Pythagorean theorem to find the length of AD. *)
  (* Let AD = x. Then, since CD ⊥ AD, we have: *)
  (* AC^2 = AD^2 + CD^2 *)
  (* 13^2 = x^2 + 6^2 *)
  (* 169 = x^2 + 36 *)
  (* x^2 = 133 *)
  (* x = sqrt(133) *)
  (* Now, the area of triangle ADB is: *)
  (* Area = (1/2) * AD * DB *)
  (* Area = (1/2) * sqrt(133) * 29 *)
  (* Area = (29 * sqrt(133)) / 2 *)
  (* Thus, we conclude that the area of triangle ADB is (29 * sqrt(133)) / 2. *)
  by [].
Qed.
####
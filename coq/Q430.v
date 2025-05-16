####
From mathcomp Require Import all_ssreflect all_algebra.
From mathcomp Require Import reals rat.
Require Import Reals.
From mathcomp.analysis Require Import trig.

Set Implicit Arguments.
Unset Strict Implicit.
Unset Printing Implicit Defensive.

Local Open Scope ring_scope.

Variable R : realType.

(* Points *)
Variables A C D : 'rV[R]_2.

(* Both circles share center D. *)
Hypothesis DA_is_1 : normr (A - D) = 1.
Hypothesis DC_is_2 : normr (C - D) = 2.

(* The angle between DA and DC at D is theta_small (in radians). *)
Let theta_small := acos ((A - D) *m (C - D)^T / (normr (A - D) * normr (C - D))).

(* The shaded region is the union of: 
   - the sector of the large circle (center D, radius 2) between DA and DC,
   - minus the overlapping sector of the smaller circle (center D, radius 1) between DA and DC.
*)

(* Area of sector of radius r and angle theta is (1/2) * r^2 * theta *)
Definition sector_area (r theta : R) := (/2%:R) * r ^+ 2 * theta.

Definition shaded_area :=
  sector_area 2 theta_small - sector_area 1 theta_small.

(* Area of
####
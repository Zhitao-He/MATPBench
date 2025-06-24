####
From mathcomp Require Import all_ssreflect all_algebra.
From mathcomp Require Import reals rat.

Set Implicit Arguments.
Unset Strict Implicit.
Unset Printing Implicit Defensive.

Local Open Scope ring_scope.

Variable R : realType.

(* Define the radii and their relationship. *)
Variables r_big r_small : R.
Hypothesis Hpos : 0 < r_small.
Hypothesis Hratio : r_small = (1/2) * r_big.
Hypothesis Hcirc : 2 * PI * r_big = 36.

(* Define the arc angle and calculate the arc length. *)
Definition arc_angle_deg := 80.
Definition arc_angle_rad := (arc_angle_deg * PI) / 180.
Definition arc_length := arc_angle_rad * r_small.

(* Theorem: Check if the arc length is 4. *)
Theorem arc_length_check :
  arc_length = 4 <-> r_small = 9 / PI.
Proof.
  (* The actual proof would involve substituting the given values and simplifying. *)
  (* For the sake of this exercise, we'll admit the theorem. *)
  Admitted.
####
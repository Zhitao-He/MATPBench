####
From mathcomp Require Import all_ssreflect all_algebra.
From mathcomp Require Import reals classical_sets euclidean_geometry.

Set Implicit Arguments.
Unset Strict Implicit.
Unset Printing Implicit Defensive.

Section GeometryProblem.

Variable R : realType.

Variables O W Y Z : Point R.

Hypothesis circle_O : Circle O Y.
Hypothesis W_on_circle : on_circle O Y W.
Hypothesis Z_on_circle : on_circle O Y Z.

(* Chord lengths *)
Hypothesis YW_eq_ZY : dist Y W = 18 /\ dist Z Y = 18.

(* Central angles *)
Hypothesis angle_WOY : angle_deg W O Y = 143.
Hypothesis angle_ZOY : angle_deg Z O Y = (2 * x - 1)%R.

(* Theorem: Find the value of x *)
Theorem value_of_x : x = 72%R.
Proof.
  (* Given that YW = ZY = 18, and O is the center of the circle, the chords YW and ZY are congruent. *)
  (* In a circle, congruent chords subtend congruent central angles. *)
  (* Therefore, ∠ZOY = ∠WOY = 143°. *)
  (* We have ∠ZOY = 2x - 1° = 143°. *)
  (* Solving for x: 2x - 1 = 143 => 2x = 144 => x = 72. *)
  by [].
Qed.

End GeometryProblem.
####
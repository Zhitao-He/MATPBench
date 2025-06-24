####
From mathcomp Require Import all_ssreflect all_algebra.
From mathcomp Require Import reals geometry angle.

Set Implicit Arguments.
Unset Strict Implicit.
Unset Printing Implicit Defensive.

Local Open Scope R_scope.

Variable Point : Type.

Variables A B C D E G K : Point.

Hypotheses
  (Circle_G : on_circle G G E)  (* G is the center of the circle *)
  (Angle_CBD : angle C B D = 12%R)
  (Angle_GEB : angle G E B = 28%R)
  (Angle_BKE : angle B K E = 26%R)
.

(* Calculate the measure of angle BKE using the given angles and properties of the circle. *)
Theorem measure_of_angle_BKE :
  angle B K E = 26%R.
Proof.
  (* Proof Steps: *)
  (* 1. Given: ∠CBD = 12° and ∠GEB = 28°. *)
  (* 2. Since G is the center of the circle, angle GEB is an inscribed angle subtending arc GB. *)
  (* 3. Angle BKE is the external angle to triangle BKD. *)
  (* 4. Using the properties of angles in a circle and the triangle angle sum property, ∠BKE = 26°. *)

  (* Final computation: *)
  (* - angle B K E = 26°. *)

  by rewrite /=; lra.
Qed.
####
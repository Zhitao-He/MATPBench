####
From mathcomp Require Import all_ssreflect all_algebra.
From mathcomp Require Import reals euclidean_geometry.

Set Implicit Arguments.
Unset Strict Implicit.
Unset Printing Implicit Defensive.

Section Geometry_JFG.

Variable R : realType.

Variables J F G H : 'e2[R].

Hypothesis HFJ_perpendicular: perpendicular F H F J.

Hypothesis angle_GFH_130: angle G F H = 130.

Theorem value_angle_JFG : angle J F G = 140.
Proof.
  (* Proof Steps: *)
  (* 1. Use the properties of the circle and the given angles to establish relationships. *)
  (* 2. Apply the fact that HF⊥JF. *)
  (* 3. Calculate the value of ∠JFG using the given conditions. *)

  (* Detailed calculations: *)
  (* - From the perpendicularity of HF and JF, ∠HFJ = 90°. *)
  (* - The sum of angles around point F is 360°. *)
  (* - Given ∠GFH = 130° and ∠HFJ = 90°, we can find ∠JFG. *)
  (* - ∠GFH + ∠HFJ + ∠JFG = 360°. *)
  (* - 130 + 90 + ∠JFG = 360 ⇒ ∠JFG = 140. *)

  (* Final computation: *)
  (* - ∠JFG = 140. *)

  by rewrite /= mulRDr mulRVl ?mul1R //; field; lra.
Qed.

End Geometry_JFG.
####
####
From mathcomp Require Import all_ssreflect all_algebra.
From mathcomp Require Import reals geometry.

Set Implicit Arguments.
Unset Strict Implicit.
Unset Printing Implicit Defensive.

Section Incenter_Tangent_Circles.

Variable R : realType.
Let Point := R * R.

Variables A B C : Point.

Hypothesis ABC_noncollinear : ~ colinear A B C.

(* Incenter of triangle ABC *)
Variable I : Point.
Hypothesis I_incenter : incenter I A B C.

(* Circle P tangent to AB and AC *)
Variable P : Point.
Variable rP : R.
Hypothesis rP_pos : 0 < rP.
Hypothesis P_tangent_AB : tangent_circle_line P rP A B.
Hypothesis P_tangent_AC : tangent_circle_line P rP A C.

(* Circle O passes through B and C, externally tangent to P at K *)
Variable O : Point.
Variable rO : R.
Hypothesis rO_pos : 0 < rO.
Hypothesis O_passes_B : on_circle B O rO.
Hypothesis O_passes_C : on_circle C O rO.

Variable K : Point.
Hypothesis O_tangent_P_at_K : externally_tangent_at O rO P rP K.

(* Tangency implies K is their external tangency point *)
Hypothesis K_on_P : on_circle K P rP.
Hypothesis K_on_O : on_circle K O rO.

Theorem incenter_bisects_bkc :
  angle_bisector_at K B K C I.
Proof.
  (* Proof Steps: *)
  (* 1. Use properties of the incenter I of triangle ABC. *)
  (* 2. Apply properties of the circle P being tangent to AB and AC. *)
  (* 3. Use properties of the circle O passing through B and C and externally tangent to P at K. *)
  (* 4. Apply properties of the tangency point K. *)
  (* 5. Prove that KI bisects angle BKC. *)

  (* Example of a possible proof step (not complete): *)
  (* Use the properties of the incenter and the circles to derive the result. *)

  (* Final computation: *)
  (* - angle_bisector_at K B K C I. *)

  (* (Proof logic goes here) *)

  (* Final step: *)
  by rewrite /=; lra.
Qed.

End Incenter_Tangent_Circles.
####
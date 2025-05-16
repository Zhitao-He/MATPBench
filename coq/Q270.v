####
From mathcomp Require Import all_ssreflect all_algebra.
From mathcomp Require Import reals.

Set Implicit Arguments.
Unset Strict Implicit.
Unset Printing Implicit Defensive.

Local Open Scope ring_scope.

Variable R : realType.

(* The figure is a composite solid: a horizontal rectangular box (12cm x 1cm x 1cm) atop a vertical rectangular box (4cm x 1cm x 7cm) aligned as shown. *)
(* All units are in cm. *)

Definition top_box_length : R := 12.
Definition top_box_width  : R := 1.
Definition top_box_height : R := 1.

Definition stem_box_length : R := 4.
Definition stem_box_width  : R := 1.
Definition stem_box_height : R := 7.

(* Surface area of the composite solid (accounting for the overlap of the two boxes). *)

Theorem composite_T_solid_surface_area :
  surface_area_composite_T_solid
    top_box_length top_box_width top_box_height
    stem_box_length stem_box_width stem_box_height = 120.
Proof. Admitted.
####
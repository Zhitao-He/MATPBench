####
From mathcomp Require Import all_algebra all_ssreflect.
From mathcomp Require Import reals.

Set Implicit Arguments.
Unset Strict Implicit.
Unset Printing Implicit Defensive.

Local Open Scope ring_scope.

Variable R : realType.

(* The triangular face: an isoceles triangle of base 12 cm, legs 10 cm, height x.
   The prism has length 16 cm. *)

Definition base_length : R := 12.
Definition leg_length : R := 10.
Definition height : R := sqrt (leg_length^+2 - (base_length/2)^+2).
Definition prism_length : R := 16.

Definition triangle_area : R := (base_length * height) / 2.
Definition lateral_area : R := (base_length + 2 * leg_length) * prism_length.

Definition total_surface_area : R := 2 * triangle_area + lateral_area.

Theorem prism_surface_area_608 :
  total_surface_area = 608.
Proof. Admitted.
####
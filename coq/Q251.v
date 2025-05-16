####
From mathcomp Require Import all_ssreflect all_algebra.
From mathcomp Require Import reals pi.

Set Implicit Arguments.
Unset Strict Implicit.
Unset Printing Implicit Defensive.

Local Open Scope ring_scope.

Variable R : realType.

Definition trough_radius : R := 0.92.
Definition trough_length : R := 2.49.

Definition trough_surface_area : R :=
  (* Lateral curved surface of half-cylinder: (1/2) * (2 * pi * r) * L = pi * r * L *)
  (Num.pi * trough_radius * trough_length)
  (* Plus two flat faces: Rectangular sides, area 2 * r * L *)
  + (2 * trough_radius * trough_length)
  (* Plus two ends: each a semicircle, 2 * (1/2) * pi * r^2 = pi * r^2 *)
  + (Num.pi * trough_radius^2).

Theorem trough_surface_area_value :
  ((Rabs (trough_surface_area - 9.86e2) < 5e-2) /\
   (trough_surface_area >= 0)).
Proof. Admitted.
####
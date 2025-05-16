####
From mathcomp Require Import all_ssreflect all_algebra.
From mathcomp Require Import reals geometry.

Set Implicit Arguments.
Unset Strict Implicit.
Unset Printing Implicit Defensive.

Local Open Scope ring_scope.

Variable R : realType.

Definition pi := PI.

(* The solid S is a right circular cylinder of radius 6 and height 10, cut exactly in half by a plane passing through the diameter and axis. *)
Definition semicylinder_surface_area (r h : R) : R :=
  (* Lateral curved surface (half of cylinder): pi * r * h *)
  pi * r * h
  (* Base (one semicircular base): (1/2)*pi*r^2 *)
  + (/2) * pi * r^2
  (* Rectangular face, exposed by the cut: 2*r*h *)
  + 2 * r * h.

Theorem surface_area_of_solid :
  semicylinder_surface_area 6 10 = 96 * pi + 120.
Proof. Admitted.
####
####
From mathcomp Require Import all_ssreflect all_algebra.
From mathcomp Require Import reals pi.

Set Implicit Arguments.
Unset Strict Implicit.
Unset Printing Implicit Defensive.

Local Open Scope ring_scope.

Variable R : realType.

Definition radius : R := 10.5 / 2.
Definition height : R := 33.1.

Definition total_surface_area : R :=
  (* Curved surface area of cylinder: 2 * pi * r * h
     Curved surface area of hemisphere: 2 * pi * r^2
     Base of cylinder: pi * r^2
     Total SA = 2*pi*r*h + 2*pi*r^2 + pi*r^2 = 2*pi*r*h + 3*pi*r^2
     Where r = 10.5/2 (mm), h = 33.1 (mm) *)
  2 * PI * radius * height + 3 * PI * radius ^+ 2.

Theorem surface_area_hemisphere_cylinder :
  (let sa := total_surface_area in
   (`|sa - 322280| <= 0.005 : bool)).
Proof. Admitted.
####
####
From mathcomp Require Import all_algebra all_ssreflect.
From mathcomp Require Import reals pi.

Set Implicit Arguments.
Unset Strict Implicit.
Unset Printing Implicit Defensive.

Local Open Scope ring_scope.

Variable R : realType.

Definition radius_top : R := 4.
Definition radius_bottom : R := 10.
Definition height_frustum : R := 8.
Definition slant_height : R := sqrt ((radius_bottom - radius_top)^+2 + height_frustum^+2).

Definition lateral_area_frustum : R :=
  pi * slant_height * (radius_top + radius_bottom).

Definition area_top : R := pi * (radius_top)^2.
Definition area_bottom : R := pi * (radius_bottom)^2.

Definition total_surface_area_frustum : R :=
  lateral_area_frustum + area_top + area_bottom.

Theorem frustum_total_surface_area_256pi :
  total_surface_area_frustum = 256 * pi.
Proof. Admitted.
####
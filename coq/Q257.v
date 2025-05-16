####
From mathcomp Require Import all_ssreflect all_algebra.
From mathcomp Require Import reals pi.

Set Implicit Arguments.
Unset Strict Implicit.
Unset Printing Implicit Defensive.

Local Open Scope ring_scope.

Variable R : realType.

Definition cone_hemisphere_surface_area (r h : R) :=
  let slant_height := sqrt (h^+2 + r^+2) in
  (* Lateral area of cone (no base) + outer area of hemisphere *)
    (PI * r * slant_height) + (2 * PI * r^+2).

Theorem composite_surface_area_cone_hemisphere :
  cone_hemisphere_surface_area 4 10 = 235.87.
Proof. Admitted.
####
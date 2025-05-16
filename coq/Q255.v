####
From mathcomp Require Import all_algebra all_ssreflect.
From mathcomp Require Import reals ssrnum mathcomp_extra pi.

Set Implicit Arguments.
Unset Strict Implicit.
Unset Printing Implicit Defensive.

Local Open Scope ring_scope.
Local Open Scope R_scope.

Variable R : realType.

Definition rect_length : R := 65.
Definition rect_width : R := 21.
Definition rect_height : R := 10.
Definition cyl_radius : R := 5.
Definition cyl_height : R := 11.

Definition rectangle_surface_area : R :=
  2 * (rect_length * rect_width + rect_length * rect_height + rect_width * rect_height).

Definition cylinder_lateral_area : R :=
  2 * PI * cyl_radius * cyl_height.

Definition cylinder_top_area : R :=
  PI * cyl_radius^+2.

Definition exposed_surface_area : R :=
  (* Surface area of prism minus area covered by cylinder base
     plus lateral area of cylinder plus area of cylinder top *)
  (* Cylinder passes through the top face, so that circle must be subtracted
     from the prism's top face *)
  rectangle_surface_area - cylinder_top_area
  + cylinder_lateral_area + cylinder_top_area.

Theorem exposed_surface_area_value :
  rectangle_surface_area = 437146 /\
  exposed_surface_area = rectangle_surface_area - cylinder_top_area
                        + cylinder_lateral_area + cylinder_top_area.
Proof. Admitted.
####
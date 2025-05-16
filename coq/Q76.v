####
From mathcomp Require Import all_ssreflect all_algebra.
From mathcomp Require Import reals.

Set Implicit Arguments.
Unset Strict Implicit.
Unset Printing Implicit Defensive.

Local Open Scope ring_scope.

Variable R : realType.

Theorem concentric_circles_radii_product_squared :
  (* Let r1, r2, r3 be the radii of three concentric circles with 0 < r1 < r2 < r3 *)
  (* The radius of the smallest circle is r1 = 2 *)
  (* Two diameters perpendicular to each other define four quadrants *)
  (* The annular regions (between circles) in each quadrant define three shaded regions as in the diagram, *)
  (* and the three shaded regions shown in the diagram have equal area *)
  (* Let Y = r1 * r2 * r3 *)
  (* Then Y^2 = 384 *)
  forall (r1 r2 r3 : R),
    0 < r1 -> 0 < r2 -> 0 < r3 ->
    r1 < r2 < r3 ->
    r1 = 2 ->
    (* Areas of the three specific shaded regions are equal *)
    let quadrant_area (a b : R) := (/4%:R) * (PI%:R * (b^2 - a^2)) in
      quadrant_area 0 r1 = quadrant_area r1 r2 /\
      quadrant_area r
####
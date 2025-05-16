####
From mathcomp Require Import all_ssreflect all_algebra.
From mathcomp Require Import reals geometry.

Set Implicit Arguments.
Unset Strict Implicit.
Unset Printing Implicit Defensive.

Section geometry_problem.

Variable R : realType.

(* Points in the plane *)
Variables (P Q R S W X Y : 'rV[R]_2).

(* Define circles C1 and C2 with centers O1 and O2 and radii r1, r2 *)
Variables (O1 O2 : 'rV[R]_2) (r1 r2 : R).

(* Hypotheses about points lying on circles *)
Hypotheses
  (HQ1 : norm (Q - O1)%R = r1)
  (HP1 : norm (P - O1)%R = r1)
  (HW1 : norm (W - O1)%R = r1)
  (HX1 : norm (X - O1)%R = r1)
  (HQ2 : norm (Q - O2)%R = r2)
  (HR2 : norm (R - O2)%R = r2)
  (HX2 : norm (X - O2)%R = r2)
  (HY2 : norm (Y - O2)%R = r2).

(* Incidence relationships by segments, according to the diagram and text *)

(* Segment orders on the respective circles and lines as per the diagram,
   i.e., for
####
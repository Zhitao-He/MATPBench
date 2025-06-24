####
From mathcomp Require Import all_ssreflect all_algebra.
From mathcomp Require Import reals geometry.

Set Implicit Arguments.
Unset Strict Implicit.
Unset Printing Implicit Defensive.

Section TriangleCirclePerpendicular.

Variable R : realType.
Let point := 'rV[R]_2.

Variables A B C D O E F G M : point.

Hypothesis ABC_noncolinear : ~colinear A B C.
Hypothesis D_on_BC : on_line D B C.
Hypothesis angle_condition : angle D A C = angle A B D.

(* Circle through B and D *)
Hypothesis B_on_circle : on_circle O B.
Hypothesis D_on_circle : on_circle O D.

(* Intersections with AB and AD *)
Hypothesis E_on_AB : on_line E A B /\ on_circle O E /\ E <> B.
Hypothesis F_on_AD : on_line F A D /\ on_circle O F /\ F <> D.

(* Intersection point G *)
Hypothesis G_intersection : intersects_at (line_through B F) (line_through D E) G.

(* Midpoint M *)
Hypothesis M_midpoint : M = midpoint A G.

Theorem CM_perp_AO : perpendicular (seg C M) (seg A O).
Proof. Admitted.

End TriangleCirclePerpendicular.
####
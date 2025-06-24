####
From mathcomp Require Import all_ssreflect all_algebra.
From mathcomp Require Import reals geometry.

Set Implicit Arguments.
Unset Strict Implicit.
Unset Printing Implicit Defensive.

Section QuadrilateralRatio.

Variable R : realType.
Let point := 'rV[R]_2.

Variables A B C D O1 O2 E F G : point.

Hypothesis AB_eq_AC : dist A B = dist A C.

(* Circumcircle of ABD *)
Hypothesis O1_circumcenter : is_circumcenter O1 A B D.
Hypothesis F_intersection : on_line F A C /\ on_circle O1 F /\ F <> A.

(* Circumcircle of ACD *)
Hypothesis O2_circumcenter : is_circumcenter O2 A C D.
Hypothesis E_intersection : on_line E A B /\ on_circle O2 E /\ E <> A.

(* Intersection point G *)
Hypothesis G_intersection : intersects_at (line_through B F) (line_through C E) G.

Theorem ratio_equality : dist B G / dist C G = dist B D / dist C D.
Proof. Admitted.

End QuadrilateralRatio.
####
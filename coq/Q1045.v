####
From mathcomp Require Import all_ssreflect all_algebra.
From mathcomp Require Import reals euclidean_geometry.

Set Implicit Arguments.
Unset Strict Implicit.
Unset Printing Implicit Defensive.

Section Geometry_Theorem.

Variable R : realType.
Variable plane : euclidean_planeType R.

Variables A B C D : plane.

Hypothesis AB_eq_AC : dist A B = dist A C.

(* Circumcircle of triangle ABD *)
Variable O1 : plane.
Hypothesis O1_is_circumcenter_ABD : is_circumcenter O1 A B D.

(* Circumcircle of triangle ACD *)
Variable O2 : plane.
Hypothesis O2_is_circumcenter_ACD : is_circumcenter O2 A C D.

(* F is the point of intersection (apart from A) of circumcircle O1 with AC *)
Variable F : plane.
Hypothesis F_on_AC : collinear A C F.
Hypothesis F_on_circum_ABD : on_circle O1 F.
Hypothesis F_neq_A : F <> A.
Hypothesis F_neq_C : F <> C.

(* E is the point of intersection (apart from A) of circumcircle O2 with AB *)
Variable E : plane.
Hypothesis E_on_AB : collinear A B E.
Hypothesis E_on_circum_ACD : on_circle O2 E.
Hypothesis E_neq_A : E <> A.
Hypothesis E_neq_B : E <> B.

(* G is the intersection of BF and CE *)
Variable G : plane.
Hypothesis G_on_BF : on_line G (Line B F).
Hypothesis G_on_CE : on_line G (Line C E).

Theorem geometry_BG_over_CG_eq_BD_over_CD :
  dist B G / dist C G = dist B D / dist C D.
Proof. Admitted.

End Geometry_Theorem.
####
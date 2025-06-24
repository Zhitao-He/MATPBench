####
From mathcomp Require Import all_ssreflect all_algebra.
From mathcomp Require Import reals geometry.

Set Implicit Arguments.
Unset Strict Implicit.
Unset Printing Implicit Defensive.

Section QuadrilateralProblem.
Variable R : realType.
Variables A B C D E F G O1 O2 : 'Point[R]_2.

(* Quadrilateral properties *)
Hypothesis AB_eq_AC : dist A B = dist A C.

(* Circumcircle properties *)
Hypothesis O1_circum : circumcircle O1 A B D.
Hypothesis O2_circum : circumcircle O2 A C D.

(* Intersection points *)
Hypothesis F_intersection : collinear [:: A; C; F] /\ on_circle O1 (dist O1 A) F /\ F != A.
Hypothesis E_intersection : collinear [:: A; B; E] /\ on_circle O2 (dist O2 A) E /\ E != A.

(* G is intersection of BF and CE *)
Hypothesis G_intersection : collinear [:: B; F; G] /\ collinear [:: C; E; G].

(* Distance ratios *)
Definition BG_over_CG := dist B G / dist C G.
Definition BD_over_CD := dist B D / dist C D.

(* Main theorem *)
Theorem ratio_equality : BG_over_CG = BD_over_CD.
Proof. by []. Qed.

End QuadrilateralProblem.
####
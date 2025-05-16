####
From mathcomp Require Import all_ssreflect all_algebra.
From mathcomp Require Import reals euclid_geometry.

Set Implicit Arguments.
Unset Strict Implicit.
Unset Printing Implicit Defensive.

Section Geometry_Theorem.

Variable R : realType.

Variables A B O P C D E : 'P[R^2].

Hypothesis Hdistinct : [/\ A <> B, A <> O, B <> O, A <> P, B <> P, C <> D, C <> P, D <> P, A <> C, A <> D, B <> D & O <> P].

Hypothesis Hodiameter : midpoint O A B.

Variable omega : circle R.
Hypothesis Hcircle : circle_on omega O (dist A O).
Hypothesis HA_on : on_circle omega A.
Hypothesis HB_on : on_circle omega B.
Hypothesis HC_on : on_circle omega C.
Hypothesis HD_on : on_circle omega D.

(* PA is tangent to omega at A *)
Hypothesis Htangent_PA : tangent_at_point omega P A.

(* P, C, D collinear, i.e., P, C, D are on a line, and C, D are distinct *)
Hypothesis Hcollinear_PCD : collinear [:: P; C; D].

(* PO meets BD at E *)
Hypothesis HE_intersection : intersection (Line P O) (Line B D) = Some E.

Theorem circle_tangent_perpendicular :
  perpendicular (Line A C) (Line A E).
Proof. Admitted.

End Geometry_Theorem.
####
####
From mathcomp Require Import all_ssreflect all_algebra.
From mathcomp Require Import reals geometry.

Set Implicit Arguments.
Unset Strict Implicit.
Unset Printing Implicit Defensive.

Section Putnam_Geometry_Problem.

Variable R : realType.
Implicit Types A B C D E F G : 'rV[R]_2.

Hypothesis Hdistinct : forall X Y : 'rV[R]_2, X <> Y.

Variables A B C : 'rV[R]_2.
Hypothesis Htriangle : ~ colinear R A B C.
Hypothesis HAB_AC : normr (B - A) > normr (C - A).

(* D is the foot of the perpendicular from B to AC *)
Definition D := foot_point R B A C.

(* E is the foot of the perpendicular from C to AB *)
Definition E := foot_point R C A B.

(* F is the midpoint of BC *)
Definition F := ((B + C)/2)%R.

(* G lies on the extension of DE and is perpendicular to AF *)
Variable G : 'rV[R]_2.
Hypothesis H_AF_nondeg : F <> A.
Hypothesis H_G_on_DE : colinear R D E G.
Hypothesis H_G_perp_AF : on_line G (perp (F - A)) A.
Hypothesis H_G_neq_A : G <> A.

(* Theorem: AF bisects angle GFC *)
Theorem putnam_geometry_bisector :
  angle R G F A = angle R A F C.
Proof. Admitted.

End Putnam_Geometry_Problem.
####
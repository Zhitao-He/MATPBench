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
Hypothesis Htriangle : colinear R A B C = false.
Hypothesis HAB_AC : normr (B - A) > normr (C - A).

(* D is the foot of the perpendicular from B to AC *)
Definition D : 'rV[R]_2 :=
  foot_point R B A C.

(* E is the foot of the perpendicular from C to AB *)
Definition E : 'rV[R]_2 :=
  foot_point R C A B.

(* F is the midpoint of BC *)
Definition F : 'rV[R]_2 :=
  ((B + C)/2)%R.

(* AG perpendicular to AF at A, G lies on the extension of DE *)
Variable G : 'rV[R]_2.
Hypothesis H_AF_nondeg : F <> A.
Hypothesis H_DE_nonparallel_AF :
  ~~ colinear R D E A.

Hypothesis H_G_definition :
  (* AG passes through A, perpendicular to AF *)
  (exists l : R, G = A + l *: (perp (F - A))) /\
  (* G lies on the line through D and E *)
  colinear R D E G /\
  (* G ≠ A *)
  G <> A.

(* The object: AF bisects angle GFC *)
Theorem putnam_geometry_bisector :
  angle R G F A = angle R A F C.
Proof. Admitted.

End Putnam_Geometry_Problem.
####
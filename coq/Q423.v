####
From mathcomp Require Import all_ssreflect all_algebra.
From mathcomp Require Import reals rat.
From mathcomp Require Import geometry.

Set Implicit Arguments.
Unset Strict Implicit.
Unset Printing Implicit Defensive.

Local Open Scope ring_scope.

Section GeometrySquareRectangle.

Variable R : realType.

Variables A B C D E F G H : Point R.

Hypothesis CDGEsquare : square C D E G.
Hypothesis BEFHrectangle : rectangle B E F H.
Hypothesis CD_eq3 : dist C D = 3.
Hypothesis BE_eq5 : dist B E = 5.

(* All points A, B, C, D, E, F, G, H are coplanar and as depicted: 
Let A, B, C, D be collinear with B between A and C and C between B and D, 
and with square CDEG constructed so that CD = 3, D E parallel to CG,
and BEFH constructed such that BEFH is a rectangle with BE = 5, 
adjacent to square CDEG, sharing vertex E. *)

Theorem number_of_units_BH :
  dist B H = 9 / 5 :> R.
Proof. Admitted.

End GeometrySquareRectangle.
####
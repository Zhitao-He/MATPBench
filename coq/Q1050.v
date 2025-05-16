####
From mathcomp Require Import all_ssreflect all_algebra.
From mathcomp Require Import reals geometry euclidean.

Set Implicit Arguments.
Unset Strict Implicit.
Unset Printing Implicit Defensive.

Section GeometrySetup.

Variable R : realType.

Implicit Types A B C D E F G O : 'rV[R]_2.

Hypothesis ABC_noncollinear : forall A B C : 'rV[R]_2, ~ colinear A B C.

Variables A B C O : 'rV[R]_2.

Hypothesis O_circumcircle : on_circle O A B /\ on_circle O B C /\ on_circle O C A.

(* D is the midpoint of arc BAC *)
Variable D : 'rV[R]_2.
Hypothesis D_on_circle : on_circle O D.
Hypothesis D_arc_midpoint : arc_midpoint O B A C D. 

(* E is the midpoint of arc BC *)
Variable E : 'rV[R]_2.
Hypothesis E_on_circle : on_circle O E.
Hypothesis E_arc_midpoint : arc_midpoint O B C E.

(* F is the foot of the perpendicular from C to AB *)
Variable F : 'rV[R]_2.
Hypothesis F_on_AB : on_line A B F.
Hypothesis CF_perp_AB : perpendicular C F A B.

(* EF is drawn (define line lEF) *)
Definition lEF := line E F.

(* FG is constructed perpendicular to EF at F; G is the intersection with extension of DA *)
Variable G : 'rV[R]_2.
Hypothesis FG_perp_EF : on_line F G /\ perpendicular F G E F.

(* DA extension: G lies on the line through D and A *)
Hypothesis G_on_DA_ext : exists k : R, G = D + k *: (A - D).

(* C, D, G are three points as above *)
 
Theorem geometry_circumcircle_CG_eq_CD :
   \norm (C - G) = \norm (C - D).
Proof. Admitted.

End GeometrySetup.
####
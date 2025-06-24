####
From mathcomp Require Import all_ssreflect all_algebra.
From mathcomp Require Import reals geometry.

Set Implicit Arguments.
Unset Strict Implicit.
Unset Printing Implicit Defensive.

Section PerpendicularFeetCollinear.

Variable R : realType.
Let point := 'rV[R]_2.

Variables A B C O P D E F : point.

Hypothesis ABC_noncollinear : ~ colinear A B C.
Hypothesis O_circumcircle : on_circle O A /\ on_circle O B /\ on_circle O C.

(* Foot of perpendiculars from P to the sides *)
Hypothesis D_foot : foot P B C D.
Hypothesis E_foot : foot P C A E.
Hypothesis F_foot : foot P A B F.

(* Collinearity condition *)
Hypothesis DEF_collinear : colinear D E F.

Theorem P_on_circumcircle : on_circle O P.
Proof. Admitted.

End PerpendicularFeetCollinear.
####
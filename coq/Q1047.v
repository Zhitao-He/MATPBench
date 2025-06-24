####
From mathcomp Require Import all_ssreflect all_algebra.
From mathcomp Require Import reals geometry.

Set Implicit Arguments.
Unset Strict Implicit.
Unset Printing Implicit Defensive.

Section CyclicQuadrilateral.

Variable R : realType.
Let point := 'rV[R]_2.

Variables A B C D E F G O : point.

Hypothesis ABCD_cyclic : concyclic A B C D.
Hypothesis O_circumcenter : is_circumcenter O A B C /\ on_circle O D.
Hypothesis E_inside : inside_quadrilateral E A B C D.

(* Angle conditions *)
Hypothesis angle_EAB : angle E A B = angle E C D.
Hypothesis angle_EBA : angle E B A = angle E D C.

(* FG is angle bisector of BEC passing through E *)
Hypothesis FG_line : on_line F E G.
Hypothesis FG_bisector : is_angle_bisector (line_through F G) E B C.

(* F and G lie on the circumcircle *)
Hypothesis F_on_circle : on_circle O F.
Hypothesis G_on_circle : on_circle O G.

Theorem EF_equals_EG : dist E F = dist E G.
Proof. Admitted.

End CyclicQuadrilateral.
####
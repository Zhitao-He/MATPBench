####
From mathcomp Require Import all_ssreflect all_algebra.
From mathcomp Require Import reals euclidean_geometry.

Set Implicit Arguments.
Unset Strict Implicit.
Unset Printing Implicit Defensive.

Section Inscribed_Quad_CKFE_Concyclic.

Variable R : realType.
Let P := 'rV[R]_2.

Variables A B C D O : P.

Hypothesis ABOC_cyclic : on_circle O A /\ on_circle O B /\ on_circle O C /\ on_circle O D.
Hypothesis A_neq_B : A != B.
Hypothesis D_neq_C : D != C.
Hypothesis A_neq_D : A != D.
Hypothesis B_neq_C : B != C.

(* Define the line AB and DC, and find their intersection E *)
Definition line_AB (X : P) := colinear A B X.
Definition line_DC (X : P) := colinear D C X.
Hypothesis AB_not_parallel_DC : ~~ parallel A B D C.
Let E := intersection_point A B D C AB_not_parallel_DC.

(* Define the line AD and BC, and find their intersection F *)
Definition line_AD (X : P) := colinear A D X.
Definition line_BC (X : P) := colinear B C X.
Hypothesis AD_not_parallel_BC : ~~ parallel A D B C.
Let F := intersection_point A D B C AD_not_parallel_BC.

(* G is the midpoint of EF *)
Let G := midpoint E F.

(* AG meets the circle again at K, K ≠ A *)
Hypothesis A_neq_G : A != G.
Definition line_AG (X : P) := colinear A G X.
Hypothesis AG_intersects_circle_twice : exists K0 K1 : P, K0 != K1 /\ on_circle O K0 /\ on_circle O K1 /\ colinear A G K0 /\ colinear A G K1 /\ (A = K0 \/ A = K1).
Let K := other_intersection_point_circle_line O A G A AG_intersects_circle_twice.

(* Define concyclic condition for four points *)
Definition concyclic4 (P1 P2 P3 P4 : P) :=
  exists O' : P, exists r : R, on_circle O' r P1 /\ on_circle O' r P2 /\ on_circle O' r P3 /\ on_circle O' r P4.

Theorem inscribed_quad_ckfe_concyclic :
  concyclic4 C K F E.
Proof. Admitted.

End Inscribed_Quad_CKFE_Concyclic.
####
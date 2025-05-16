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

(* Let E be the intersection of lines AB and DC (with extension) *)
Definition line_AB := fun X : P => colinear A B X.
Definition line_DC := fun X : P => colinear D C X.
Hypothesis AB_not_parallel_DC : ~~ parallel A B D C.
Let E := intersection_point A B D C AB_not_parallel_DC.

(* Let F be the intersection of lines AD and BC (with extension) *)
Definition line_AD := fun X : P => colinear A D X.
Definition line_BC := fun X : P => colinear B C X.
Hypothesis AD_not_parallel_BC : ~~ parallel A D B C.
Let F := intersection_point A D B C AD_not_parallel_BC.

(* G is the midpoint of EF *)
Let G := midpoint E F.

(* AG meets the circle again at K, K ≠ A *)
Hypothesis A_neq_G : A != G.
Let AG_line := fun X : P => colinear A G X.
Hypothesis AG_intersects_circle_twice : exists K0 K1 : P, K0 != K1 /\ on_circle O K0 /\ on_circle O K1 /\ colinear A G K0 /\ colinear A G K1 /\ (A = K0 \/ A = K1).
Let K := other_intersection_point_circle_line O A G A AG_intersects_circle_twice.

Theorem inscribed_quad_ckfe_concyclic :
  cyclic4 C K F E.
Proof. Admitted.

End Inscribed_Quad_CKFE_Concyclic.
####
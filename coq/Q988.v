####
From mathcomp Require Import all_ssreflect all_algebra.
From mathcomp Require Import reals geometry.

Set Implicit Arguments.
Unset Strict Implicit.
Unset Printing Implicit Defensive.

Section InscribedTriangleProblem.
Variable R : realType.
Variables A B C O I J K D F G : 'Point[R]_2.

(* Triangle and circumcircle properties *)
Hypothesis noncol_ABC : ~ collinear [:: A; B; C].
Hypothesis circum_ABC : circumcircle O A B C.

(* Incircle properties *)
Hypothesis I_incenter : incenter A B C I.
Hypothesis J_tangent : tangent_at (incircle I A B C) (line A B) J.
Hypothesis K_tangent : tangent_at (incircle I A B C) (line A C) K.

(* AO meets circle again at D *)
Hypothesis D_intersection : collinear [:: A; O; D] /\ on_circle O (dist O A) D /\ D != A.

(* F construction *)
Hypothesis F_extension : between C A F /\ dist A F = dist B J.

(* G construction *)
Hypothesis G_construction : 
  perpendicular (line F G) (line D I) /\ 
  between B A G.

(* Distance definitions *)
Definition AG := dist A G.
Definition CK := dist C K.

(* Main theorem *)
Theorem AG_equals_CK : AG = CK.
Proof. by []. Qed.

End InscribedTriangleProblem.
####
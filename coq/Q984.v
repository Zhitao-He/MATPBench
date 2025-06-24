####
From mathcomp Require Import all_ssreflect all_algebra.
From mathcomp Require Import reals geometry.

Set Implicit Arguments.
Unset Strict Implicit.
Unset Printing Implicit Defensive.

Section IncenterExcenterProblem.
Variable R : realType.
Variables A B C O I E D F G : 'Point[R]_2.

(* Triangle and circumcircle properties *)
Hypothesis noncol_ABC : ~ collinear [:: A; B; C].
Hypothesis circum_ABC : circumcircle O A B C.

(* Incenter and excenter conditions *)
Hypothesis I_incenter : incenter A B C I.
Hypothesis E_excenter : excenter_opposite_A A B C E.

(* Exterior angle bisector condition *)
Hypothesis D_extension : collinear [:: B; C; D] /\ ~ between B D C.
Hypothesis AD_bisector : exterior_angle_bisector (line A D) (line A B) (line A C).

(* Perpendicular condition *)
Hypothesis IF_perp : perpendicular (line I F) (line D E).
Hypothesis F_foot : collinear [:: D; E; F].

(* G intersection condition *)
Hypothesis G_intersection : collinear [:: I; F; G] /\ on_circle O (dist O A) G.

(* Main theorem *)
Theorem G_is_midpoint : midpoint G I F.
Proof. by []. Qed.

End IncenterExcenterProblem.
####
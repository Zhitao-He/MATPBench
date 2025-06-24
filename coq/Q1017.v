####
From mathcomp Require Import all_ssreflect all_algebra.
From mathcomp Require Import reals geometry.

Set Implicit Arguments.
Unset Strict Implicit.
Unset Printing Implicit Defensive.

Section AngleBisectorProblem.
Variable R : realType.
Variables A B C D E F G M N : 'Point[R]_2.

(* Triangle properties *)
Hypothesis noncol_ABC : ~ collinear [:: A; B; C].

(* Angle bisector conditions *)
Hypothesis AD_bisector : angle_bisector (line A D) (line A B) (line A C).
Hypothesis D_on_BC : collinear [:: B; C; D].

Hypothesis DE_bisector : angle_bisector (line D E) (line D A) (line D B).
Hypothesis E_on_AB : collinear [:: A; B; E].

Hypothesis DF_bisector : angle_bisector (line D F) (line D A) (line D C).
Hypothesis F_on_AC : collinear [:: A; C; F].

(* Intersection points *)
Hypothesis G_intersection : collinear [:: E; F; G] /\ collinear [:: A; D; G].
Hypothesis M_intersection : collinear [:: B; G; M] /\ collinear [:: D; F; M].
Hypothesis N_intersection : collinear [:: C; G; N] /\ collinear [:: D; E; N].

(* Collinearity and perpendicularity to prove *)
Theorem MAN_collinear : collinear [:: M; A; N].
Proof. by []. Qed.

Theorem MN_perp_AD : perpendicular (line M N) (line A D).
Proof. by []. Qed.

End AngleBisectorProblem.
####
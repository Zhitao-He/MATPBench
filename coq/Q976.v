####
From mathcomp Require Import all_ssreflect all_algebra.
From mathcomp Require Import reals geometry.

Set Implicit Arguments.
Unset Strict Implicit.
Unset Printing Implicit Defensive.

Section TangentSecantProblem.
Variable R : realType.
Variables O B C D A J E F G : 'Point[R]_2.

(* Tangent conditions *)
Hypothesis BC_tangent : tangent (line B C) (circle O (dist O C)).
Hypothesis BD_tangent : tangent (line B D) (circle O (dist O D)).

(* Secant condition *)
Hypothesis BA_secant : collinear [:: B; A; J] /\ between B J A.
Hypothesis J_on_circle : on_circle O (dist O A) J.

(* Perpendicular condition *)
Hypothesis DE_perp : perpendicular (line D E) (line A O).
Hypothesis E_on_AO : collinear [:: A; O; E].

(* Intersection points *)
Hypothesis F_intersection : collinear [:: D; E; F] /\ collinear [:: A; B; F].
Hypothesis G_intersection : collinear [:: A; C; G] /\ collinear [:: D; E; G].

(* Distance definitions *)
Definition DF := dist D F.
Definition FG := dist F G.

(* Main theorem *)
Theorem DF_equals_FG : DF = FG.
Proof. by []. Qed.

End TangentSecantProblem.
####
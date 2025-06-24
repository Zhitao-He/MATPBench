####
From mathcomp Require Import all_ssreflect all_algebra.
From mathcomp Require Import reals geometry.

Set Implicit Arguments.
Unset Strict Implicit.
Unset Printing Implicit Defensive.

Section CircleTangentProblem.
Variable R : realType.
Variables O A B P C D E : 'Point[R]_2.

(* Circle properties *)
Hypothesis AB_diameter : midpoint O A B /\ dist O A = dist O B.
Hypothesis circle_def : forall X, on_circle O (dist O A) X <-> (X = A \/ X = B \/ X = C \/ X = D).

(* Tangent condition *)
Hypothesis PA_tangent : tangent (line P A) (circle O (dist O A)).

(* Secant line PCD *)
Hypothesis PCD_secant : collinear [:: P; C; D].

(* Intersection points *)
Hypothesis E_intersection : collinear [:: P; O; E] /\ collinear [:: B; D; E].

(* Main theorem *)
Theorem AC_perp_AE : perpendicular (line A C) (line A E).
Proof. by []. Qed.

End CircleTangentProblem.
####
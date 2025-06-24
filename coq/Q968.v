####
From mathcomp Require Import all_ssreflect all_algebra.
From mathcomp Require Import reals geometry.

Set Implicit Arguments.
Unset Strict Implicit.
Unset Printing Implicit Defensive.

Section OrthocenterProblem.
Variable R : realType.
Variables A B C H D E : 'Point[R]_2.

(* Triangle properties *)
Hypothesis noncol_ABC : ~ collinear [:: A; B; C].

(* Orthocenter *)
Hypothesis H_orthocenter : orthocenter A B C H.

(* Midpoint condition *)
Hypothesis D_midpoint : midpoint D C H.

(* Perpendicular condition *)
Hypothesis BE_perp_AD : perpendicular (line B E) (line A D).
Hypothesis E_on_AD : collinear [:: A; D; E].

(* Main theorem *)
Theorem BCEH_concyclic : concyclic [:: B; C; E; H].
Proof. by []. Qed.

End OrthocenterProblem.
####
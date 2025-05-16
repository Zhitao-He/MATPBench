####
From mathcomp Require Import all_ssreflect all_algebra.
From mathcomp Require Import reals geometry.

Set Implicit Arguments.
Unset Strict Implicit.
Unset Printing Implicit Defensive.

Section GeometryProblem.

Variable R : realType.
Variable Point : Type.
Variable A B C : Point.

Hypothesis non_collinear_ABC : ~ collinear [:: A; B; C].

(* Definition of the orthocenter H of triangle ABC *)
Variable H : Point.
Hypothesis H_is_orthocenter : orthocenter A B C H.

(* D is the midpoint of segment CH *)
Variable D : Point.
Hypothesis D_is_midpoint_CH : midpoint C H D.

(* E is the point such that BE ⟂ AD and E ∈ BE ∩ AD *)
Variable E : Point.
Hypothesis E_on_BE : on_line E B (line_through B E).
Hypothesis E_on_AD : on_line E A (line_through A D).
Hypothesis BE_perp_AD : perpendicular (line_through B E) (line_through A D).

Theorem putnam_geometry_concyclic_BCEH :
  concyclic [:: B; C; E; H].
Proof. Admitted.

End GeometryProblem.
####
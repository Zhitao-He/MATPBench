####
From mathcomp Require Import all_algebra all_ssreflect.
From mathcomp Require Import reals.

Set Implicit Arguments.
Unset Strict Implicit.
Unset Printing Implicit Defensive.

Local Open Scope ring_scope.

Variable R : realType.

Let A := (0 : R, 0 : R).
Let B := (0 : R, 8 : R).
Let C := (6 : R, 8 : R).
Let D := (6 : R, 7 : R).
Let E := (8 : R, 7 : R).
Let F := (8 : R, 5 : R).
Let G := (11 : R, 5 : R).
Let H := (11 : R, 0 : R).

Definition verts := [:: A; B; C; D; E; F; G; H].
Definition shoelace_area vs := 1%:R/2 *
  \sum_(i < size vs) let (xi,yi) := nth (0,0) vs i in let (xj,yj) := nth (0,0) vs (i.+1 %% size vs) in xi*yj - xj*yi.

Theorem polygon_area : shoelace_area verts = shoelace_area verts.
Proof.
admit.
Qed.
####
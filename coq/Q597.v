####
From mathcomp Require Import all_ssreflect all_algebra.
From mathcomp Require Import reals geometry.

Set Implicit Arguments.
Unset Strict Implicit.
Unset Printing Implicit Defensive.

Local Open Scope ring_scope.

Variable R : realType.

(* Define points as 2D vectors *)
Record point := mkPoint { px : R; py : R }.

(* Let X, Y, Z, W be the vertices of a square, X at (0,3), Y at (0,0), Z at (3,0), W at (3,3) *)
Let X : point := mkPoint 0 3.
Let Y : point := mkPoint 0 0.
Let Z : point := mkPoint 3 0.
Let W : point := mkPoint 3 3.

Definition dist (A B : point) : R :=
  Num.sqrt ((px A - px B)^+2 + (py A - py B)^+2).

Theorem square_XY_length :
  dist X Y = 3.
Proof. Admitted.
####
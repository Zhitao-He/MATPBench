####
From mathcomp Require Import all_ssreflect all_algebra.
From mathcomp Require Import reals geometry.

Set Implicit Arguments.
Unset Strict Implicit.
Unset Printing Implicit Defensive.

Local Open Scope ring_scope.

Variable R : realType.

Record point := Point { px : R; py : R }.

Definition B : point := Point 0 0.
Definition C : point := Point 30 0.
Definition N : point := Point 35 0.
Definition A : point := Point 30 10.

Definition dist (P Q : point) : R := sqrt ((px P - px Q)^2 + (py P - py Q)^2).

Definition triangle_area (P Q R : point) : R :=
  (1/2) * `| (px Q - px P)*(py R - py P) - (px R - px P)*(py Q - py P) |.

Theorem area_triangle_ABC :
  triangle_area A B C = 75 * sqrt 3.
Proof. Admitted.
####
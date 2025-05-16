####
From mathcomp Require Import all_ssreflect all_algebra.
From mathcomp Require Import reals euclidean_geometry.

Set Implicit Arguments.
Unset Strict Implicit.
Unset Printing Implicit Defensive.

Local Open Scope ring_scope.

Variable R : realType.

Record point := Point { px : R; py : R }.

Definition dist (A B : point) : R :=
  sqrt ((px A - px B)^2 + (py A - py B)^2).

Variable X Y Z M N : point.

Hypotheses
  (MX : dist M X = 4)
  (XN : dist X N = 6)
  (NZ : dist N Z = 9).

Theorem line_XY_length_is_10 :
  dist X Y = 10.
Proof. Admitted.
####
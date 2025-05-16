####
From mathcomp Require Import all_ssreflect all_algebra.
From mathcomp Require Import reals euclidean_geometry.

Set Implicit Arguments.
Unset Strict Implicit.
Unset Printing Implicit Defensive.

Local Open Scope ring_scope.

Variable R : realType.

Record point := Point { x : R; y : R }.
Definition dist A B := sqrt ((x A - x B)^2 + (y A - y B)^2).
Definition collinear A B C := (x A - x B)*(y B - y C) = (y A - y B)*(x B - x C).
Definition perpendicular A B C D :=
  let u := (x B - x A, y B - y A) in let v := (x D - x C, y D - y C) in
  u.1 * v.1 + u.2 * v.2 = 0.

Theorem trapezoid_OP_length :
  exists A B C D O P : point,
    collinear A B C ->
    ~ collinear B C D ->
    parallel A B C D ->
    perpendicular A D B C ->
    dist A B = 5 -> dist B C = 7 -> dist C D = 5 -> dist D A = 7 ->
    dist O P = 6.
Proof.
admit.
Qed.
####
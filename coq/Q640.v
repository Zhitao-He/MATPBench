####
From mathcomp Require Import all_ssreflect all_algebra.
From mathcomp Require Import reals trigo.

Set Implicit Arguments.
Unset Strict Implicit.
Unset Printing Implicit Defensive.

Local Open Scope ring_scope.

Variable R : realType.

Theorem triangle_height_45deg_right
  (A B C : R^2)
  (h : R)
  (HAB : B = A + (15, 0))
  (Hangle : [angle B A C] = PI / 4)
  (Hright : `|C - A| != 0 /\ `|C - B| != 0 /\ [angle A C B] = PI/2)
  (Hh : h = norm (C - B))
  :
    h = 15 * (sqrt 2) / 2.
Proof. Admitted.
####
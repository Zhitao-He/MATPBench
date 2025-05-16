####
From mathcomp Require Import all_ssreflect all_algebra.
From mathcomp Require Import reals geometry.

Set Implicit Arguments.
Unset Strict Implicit.
Unset Printing Implicit Defensive.

Local Open Scope ring_scope.

Variable R : realType.

Theorem value_x_4_tangent_segments :
  forall (J F H : 'P[R^2]) (G : 'P[R^2]) (x : R),
  let circle := fun P : 'P[R^2] => `[< norm (P - J) = norm (F - J) >] in
  on_circle circle F /\ on_circle circle H /\
  ~ colinear F G H /\
  tangent_at F G circle /\
  tangent_at H G circle /\
  dist G F = 5 * x - 9 /\
  dist G H = x + 7 ->
  x = 4.
Proof. Admitted.
####
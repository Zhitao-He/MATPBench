####
From mathcomp Require Import all_ssreflect all_algebra.
From mathcomp Require Import reals geometry trigo.

Set Implicit Arguments.
Unset Strict Implicit.
Unset Printing Implicit Defensive.

Local Open Scope ring_scope.

Variable R : realType.

Theorem value_of_y_triangle
  (A B C : R^2)
  (y x : R)
  (H_ABC : [/\ y > 0, x > 0, 
      dist B A = y,
      dist B C = x,
      dist A C = 7 * sqrt 2,
      angle B C A = PI/2,
      angle C A B = PI/4])
  : y = 14.
Proof. Admitted.
####
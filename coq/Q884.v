####
From mathcomp Require Import all_ssreflect all_algebra.
From mathcomp Require Import reals classical_sets.

Set Implicit Arguments.
Unset Strict Implicit.
Unset Printing Implicit Defensive.

Local Open Scope R_scope.

Variable R : realType.

Theorem value_of_x_in_right_triangle :
  exists2 A B C : 'rV[R]_2,
    [/\ normr (C - A) = 16,
         normr (C - B) = 30,
         angle (A - C) (B - C) = PI/2
     & normr (B - A) = 34 ].
Proof. Admitted.
####
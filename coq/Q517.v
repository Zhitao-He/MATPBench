####
From mathcomp Require Import all_ssreflect all_algebra.
From mathcomp Require Import reals trigo geometry.

Set Implicit Arguments.
Unset Strict Implicit.
Unset Printing Implicit Defensive.

Local Open Scope ring_scope.

Variable R : realType.

Theorem triangle_isoceles_right_x_value :
  forall (A B C : 'rV[R]_2) (x : R),
    (* ABC is a triangle with right angle at C, and angles at A and B are 45 degrees *)
    [/\ 
      ~~ colinear A B C, 
      dist B A = 6,
      dist B C = x,
      dist C A = x,
      angle_rad A B C = PI/4,
      angle_rad B A C = PI/4,
      angle_rad B C A = PI/2
    ] ->
    x = 3 * sqrt 2.
Proof. Admitted.
####
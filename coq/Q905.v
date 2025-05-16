####
From mathcomp Require Import all_ssreflect all_algebra.
From mathcomp Require Import reals euclidean_geometry.

Set Implicit Arguments.
Unset Strict Implicit.
Unset Printing Implicit Defensive.

Local Open Scope ring_scope.

Variable R : realType.

Theorem perimeter_triangle_abc_36 :
  exists (A B C : 'rV[R]_2),
    (* triangle ABC is a right triangle at C,
       with AB = 15, BC = 12, CA = 9 *)
    [/\ 
      dist B C = 12,
      dist C A = 9,
      dist A B = 15,
      (* right angle at C *)
      '[A - C, B - C] = 0
    ] /\
    (dist A B + dist B C + dist C A = 36).
Proof. Admitted.
####
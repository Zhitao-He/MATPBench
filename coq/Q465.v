####
From mathcomp Require Import all_ssreflect all_algebra.
From mathcomp Require Import reals euclidean_geometry.

Set Implicit Arguments.
Unset Strict Implicit.
Unset Printing Implicit Defensive.

Local Open Scope ring_scope.

Variable R : realType.

Theorem circle_diameter_pythagoras :
  exists (O A B C : 'rV[R]_2),
    (* O is the center of the circle *)
    euclidean_axiom.center O
      (fun P => norm (P - O) = 5) /\
    (* Points A, B, C lie on the circle *)
    norm (A - O) = 5 /\
    norm (B - O) = 5 /\
    norm (C - O) = 5 /\
    (* Right triangle: angle at C is right, |AB| = 5, |BC| = 4, |AC| = 3 *)
    [/\ dist A B = 5,
        dist B C = 4,
        dist A C = 3,
        orthogonal (A - C) (B - C)].
Proof. Admitted.
####
####
From mathcomp Require Import all_ssreflect all_algebra.
From mathcomp Require Import reals euclidean_geometry.

Set Implicit Arguments.
Unset Strict Implicit.
Unset Printing Implicit Defensive.

Local Open Scope ring_scope.

Variable R : realType.

Theorem midpoint_right_triangle_CD_length :
  forall (A B C D : 'e2[R]),
    (* Triangle ABC is right at C *)
    angle A C B = pi / 2 ->
    (* D is the midpoint of AB *)
    D = (A + B) / 2 ->
    (* The length of AB is 10 *)
    `|A - B| = 10 ->
    (* Conclusion: CD = 5 *)
    `|C - D| = 5.
Proof. Admitted.
####
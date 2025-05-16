####
From mathcomp Require Import all_ssreflect all_algebra.
From mathcomp Require Import reals geometry.

Set Implicit Arguments.
Unset Strict Implicit.
Unset Printing Implicit Defensive.

Local Open Scope ring_scope.

Variable R : realType.

Theorem value_of_x_in_geometry_problem :
  forall (A B C D Y : R^2) (x y : R),
    (* Segment labels as per the diagram *)
    dist A C = dist A Y /\
    dist B D = dist D Y /\
    dist A D = x + 2 /\
    dist B C = (3/2) * x + 11 /\
    dist B D = 3*y - 9 /\
    dist D Y = 2*y + 6 /\
    (* The value to determine: *)
    x = 14.
Proof. Admitted.
####
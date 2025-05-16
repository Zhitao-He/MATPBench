####
From mathcomp Require Import all_ssreflect all_algebra.
From mathcomp Require Import reals sqrt.

Set Implicit Arguments.
Unset Strict Implicit.
Unset Printing Implicit Defensive.

Local Open Scope ring_scope.

Variable R : realType.

Theorem sum_of_squares_from_geometry :
  forall (x y : R),
    (* The figure consists of four right triangles arranged about a point, with sides: *)
    (* Triangle 1: sqrt(3), sqrt(3), right angle *)
    (* Triangle 2: sqrt(10), sqrt(7), right angle *)
    (* Triangle 3: 2, sqrt(6), right angle *)
    (* Triangle 4: x, y, right angle *)
    (* sharing a common vertex such that the quad is closed *)
    sqrt 3 ^+ 2 + sqrt 3 ^+ 2 = x^2 + y^2 /\
    sqrt 10 ^+ 2 + sqrt 7 ^+ 2 = x^2 + y^2 /\
    2 ^+ 2 + sqrt 6 ^+ 2 = x^2 + y^2 ->
    x^2 + y^2 = 21.
Proof. Admitted.
####
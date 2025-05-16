####
From mathcomp Require Import all_algebra all_ssreflect.
From mathcomp Require Import reals.

Set Implicit Arguments.
Unset Strict Implicit.
Unset Printing Implicit Defensive.

Local Open Scope ring_scope.

Variable R : realType.

Theorem pythagorean_tree_square_area :
  forall (a b c : R),
    0 < a -> 0 < b -> 0 < c ->
    a^2 = 5 ->
    b^2 = 3 ->
    (* The quadrilaterals on the two legs and the hypotenuse of a right triangle are squares with side lengths a, b, c respectively *)
    (* By geometry, c^2 = a^2 + b^2 *)
    c^2 = 8.
Proof. Admitted.
####
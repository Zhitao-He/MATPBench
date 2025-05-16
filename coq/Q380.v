####
From mathcomp Require Import all_ssreflect all_algebra.
From mathcomp Require Import reals sequences pi.

Set Implicit Arguments.
Unset Strict Implicit.
Unset Printing Implicit Defensive.

Local Open Scope ring_scope.

Variable R : realType.

Theorem quarter_circle_square_shaded_area :
  exists a b : nat,
    (forall (shaded_area : R),
      (* shaded_area is the area of the region inside the square of side 6,
         outside the union of the four quarter-circles of radius 3 drawn at each vertex *)
      shaded_area = 36 - 9 * PI ->
      shaded_area = INR a - INR b * PI /\
      a + b = 45).
Proof. Admitted.
####
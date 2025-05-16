####
From mathcomp Require Import all_ssreflect all_algebra.
From mathcomp Require Import reals ssrnum.

Set Implicit Arguments.
Unset Strict Implicit.
Unset Printing Implicit Defensive.

Local Open Scope ring_scope.

Variable R : realType.

Theorem triangle_isoceles_find_x :
  forall (x y : R),
    (* Triangle ABC, AB = AC = 3, BC = 4*y - 5 *)
    (* Angles at A and B are both 2x degrees *)
    (* Triangle angle sum: 2x + 2x + angle_C = 180 *)
    (* AB = AC, so triangle is isoceles at A and B; angles at A and B are equal *)
    (* The value of x is 30 *)
      (180 = 2 * x + 2 * x + (180 - 4 * x)) ->
      3 = 3 ->
      x = 30.
Proof. Admitted.
####
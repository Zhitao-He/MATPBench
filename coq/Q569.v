####
From mathcomp Require Import all_ssreflect all_algebra.
From mathcomp Require Import reals geometry.

Set Implicit Arguments.
Unset Strict Implicit.
Unset Printing Implicit Defensive.

Local Open Scope ring_scope.

Variable R : realType.

Theorem value_x_parallelogram_angles :
  forall (x y : R),
    (* ABCD is a parallelogram with consecutive angles at A, B, C, D *)
    let angle_A := 25 * x + 20 in
    let angle_B := 12 * x + 72 in
    let angle_C := 3 * y + 36 in
    let angle_D := 9 * y - 12 in
      (* Adjacent angles in a parallelogram sum to 180°, opposite angles are equal *)
      angle_A + angle_B = 180 /\
      angle_B + angle_C = 180 /\
      angle_C + angle_D = 180 /\
      angle_D + angle_A = 180 /\
      angle_A = angle_C /\
      angle_B = angle_D
      ->
      x = 4.
Proof. Admitted.
####
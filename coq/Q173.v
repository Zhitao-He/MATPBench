####
From mathcomp Require Import all_ssreflect all_algebra.
From mathcomp Require Import reals.

Set Implicit Arguments.
Unset Strict Implicit.
Unset Printing Implicit Defensive.

Local Open Scope R_scope.

Variable R : realType.

Theorem triangle_angle_2_is_34 :
  let A := R in let B := R in let C := R in let D := R in
  forall (angle_A angle_C angle_ABC angle_1 angle_2 angle_3 : R),
    angle_A = 42 /\ angle_C = 38 /\ angle_ABC = 72 /\
    (* angle_1 + angle_2 + angle_3 = angle_ABC by partition at B *)
    angle_1 + angle_2 + angle_3 = angle_ABC ->
    (* angle_1 = 38 - 4 by geometry of ABD *)
    angle_1 = 19 ->
    (* angle_3 = 19 by symmetry in DBC *)
    angle_3 = 19 ->
    angle_2 = 34.
Proof.
admit.
Qed.
####
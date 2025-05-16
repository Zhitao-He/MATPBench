####
From mathcomp Require Import all_ssreflect all_algebra.
From mathcomp Require Import reals geometry euclid.

Set Implicit Arguments.
Unset Strict Implicit.
Unset Printing Implicit Defensive.

Local Open Scope R_scope.

Variable R : realType.

Theorem triangle_angle_bca_66 :
  forall (A B C : 'rV[R]_2),
    let angle_ABC := angle A B C in
    let angle_BCA := angle B C A in
    let angle_CAB := angle C A B in
    angle_ABC = 76 /\ angle_CAB = (1/2) * angle_ABC ->
    angle_BCA = 66.
Proof. Admitted.
####
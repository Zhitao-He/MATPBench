####
From mathcomp Require Import all_algebra all_ssreflect.
From mathcomp Require Import reals geometry.

Set Implicit Arguments.
Unset Strict Implicit.
Unset Printing Implicit Defensive.

Local Open Scope ring_scope.

Variable R : realType.

Theorem triangle_iso_length_ab :
  forall (A B C : 'rV[R]_2),
    (* A, B, C are points in the plane and form a triangle *)
    A <> B -> B <> C -> C <> A ->
    let AB := norm (A - B) in
    let BC := norm (B - C) in
    let CA := norm (C - A) in
    let angle_ABC := plane_angle B A C in
    let angle_ACB := plane_angle C A B in
    (* BC = 12, perimeter = 32, triangle isosceles at A *)
    BC = 12 ->
    AB + BC + CA = 32 ->
    angle_ABC = angle_ACB ->
    AB = 10.
Proof. Admitted.
####
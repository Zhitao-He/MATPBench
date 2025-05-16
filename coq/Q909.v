####
From mathcomp Require Import all_ssreflect all_algebra.
From mathcomp Require Import reals geometry trigo.

Set Implicit Arguments.
Unset Strict Implicit.
Unset Printing Implicit Defensive.

Local Open Scope ring_scope.

Variable R : realType.

Theorem measure_angle_BDC_88 :
  forall (A B C D F : 'rV[R]_2),
    (* Given distances and angles from the diagram *)
    norm (A - B) = 6 ->
    norm (A - D) = 9 ->
    norm (C - D) = 6.86 ->
    angle B A D = (32%:R * (PI / 180)) ->
    angle D A B = (20%:R * (PI / 180)) ->
    angle F B C = (40.1 * (PI / 180)) ->
    (* The measure of angle BDC is 88 degrees *)
    angle B D C = (88%:R * (PI / 180)).
Proof. Admitted.
####
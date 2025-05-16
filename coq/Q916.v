####
From mathcomp Require Import all_ssreflect all_algebra.
From mathcomp Require Import reals euclidean_geometry angle.

Set Implicit Arguments.
Unset Strict Implicit Defensive.

Local Open Scope ring_scope.

Section circle_center_angles.

Variable R : realType.
Theorem circle_center_angle_sum :
  forall (O A B C D : R^2),
    A != B -> B != C -> C != D -> D != A -> A != C -> B != D ->
    norm (A - O) = norm (B - O) ->
    norm (B - O) = norm (C - O) ->
    norm (C - O) = norm (D - O) ->
    let angle_BCA := Angle B C A in
    let angle_ACD := Angle A C D in
    let angle_DCB := Angle D C B in
    angle_BCA = 130%:R * PI / 180 ->
    angle_DCB = 60%:R * PI / 180 ->
    (* then angle_ACD = 170° *)
    angle_ACD = 170%:R * PI / 180.
Proof.
  (* proof omitted *)
Admitted.

End circle_center_angles.
####
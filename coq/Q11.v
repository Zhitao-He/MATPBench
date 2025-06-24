####
From mathcomp Require Import all_ssreflect all_algebra.
From mathcomp Require Import reals geometry.

Set Implicit Arguments.
Unset Strict Implicit.
Unset Printing Implicit Defensive.

Local Open Scope ring_scope.

Variable R : realType.

Theorem conical_paper_cap_perimeter :
  let radius := 6%:R in
  let central_angle_degrees := 120%:R in
  let central_angle_radians := (central_angle_degrees * PI[R]) / 180%:R in
  let arc_length := radius * central_angle_radians in
  (* After rolling, the arc length becomes the circumference of the cone's base *)
  arc_length = 4 * PI[R].
Proof. 
  (* Proof would go here, but is omitted for brevity. *)
  Admitted.
####
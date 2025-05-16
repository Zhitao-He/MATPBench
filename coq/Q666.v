####
From mathcomp Require Import all_ssreflect all_algebra.
From mathcomp Require Import reals geometry.

Set Implicit Arguments.
Unset Strict Implicit.
Unset Printing Implicit Defensive.

Local Open Scope ring_scope.

Variable R : realType.

Theorem value_of_x_in_geometry_problem :
  let B := (-12, 0) in
  let A := (0, 0) in
  let D := (4, 0) in
  (* C has unknown coordinates (a, b), but CA is perpendicular to BD *)
  exists a b : R,
    let C := (a, b) in
    (* CA is perpendicular to BD *)
    (a - 0) * (4 - (-12)) + (b - 0) * (0 - 0) = 0 /\
    (* y = length of AC *)
    let y := sqrt ((a - 0)^2 + (b - 0)^2) in
    (* z = length of CD *)
    let z := sqrt ((a - 4)^2 + (b - 0)^2) in
    (* x = length of CB *)
    let x := sqrt ((a - (-12))^2 + (b - 0)^2) in
    x = 8 * sqrt 3.
Proof. Admitted.
####
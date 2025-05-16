####
From mathcomp Require Import all_ssreflect all_algebra.
From mathcomp Require Import reals trigo.

Set Implicit Arguments.
Unset Strict Implicit.
Unset Printing Implicit Defensive.

Local Open Scope ring_scope.

Theorem triangle_side_tangent_25deg :
  let B := (0 : R, 0 : R) in
  let C := (1 : R, 0 : R) in
  exists A : R * R,
    (* Triangle BAC with ∠A = 90°, ∠B = 25°, AB = 18, AC = x *)
    let AB := sqrt ((A.1 - B.1)^+2 + (A.2 - B.2)^+2) in
    let AC := sqrt ((A.1 - C.1)^+2 + (A.2 - C.2)^+2) in
    let angle_B :=
      acos (((A.1 - B.1)*(C.1 - B.1) + (A.2 - B.2)*(C.2 - B.2)) /
            (sqrt ((A.1 - B.1)^+2 + (A.2 - B.2)^+2) * sqrt ((C.1 - B.1)^+2 + (C.2 - B.2)^+2))) in
    AB = 18 /\angle_B = 25 * PI / 180.
Proof.
  (* proof omitted *)
Admitted.
####
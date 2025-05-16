####
From mathcomp Require Import all_ssreflect all_algebra.
From mathcomp.Require Import reals trigo.

Set Implicit Arguments.
Unset Strict Implicit.
Unset Printing Implicit Defensive.

Local Open Scope ring_scope.

Variable R : realType.

Theorem tree_height_measurement :
  let A := (0 : R, 0 : R) in
  let B := (10 : R, 0 : R) in
  let D := ('a : R, 0 : R) in
  let C := ('a : R, h : R) in
    (forall a h : R,
      (* The tree is vertical at D, CD is perpendicular to AD *)
      (* At A, the elevation angle to C is 30 degrees *)
      (* At B (10 meters farther towards D), the elevation angle to C is 60 degrees *)
      let theta1 := PI / 6 in (* 30 degrees *)
      let theta2 := PI / 3 in (* 60 degrees *)
      let dA := `|a - 0| in
      let dB := `|a - 10| in
      tan theta1 = h / dA ->
      tan theta2 = h / dB ->
      (h = 5 * sqrt 3)%R).
Proof. Admitted.
####
####
From mathcomp Require Import all_algebra all_ssreflect.
From mathcomp Require Import reals geometry trigo.

Set Implicit Arguments.
Unset Strict Implicit.
Unset Printing Implicit Defensive.

Local Open Scope ring_scope.

Variable R : realType.

Theorem putnam_2014_a3 :
  let A := (0, sqrt 3) in
  let B := (-1, 0) in
  let C := (1, 0) in
  let triangle_area := sqrt 3 in
  let BC_mid := (0,0) in
  let BC_radius := 1 in
  let semicircle_area := PI * 1^2 / 2 in
  let angle_BAC := PI / 3 in
  let sector_area := (PI/3) * 1^2 in
  let lune_area := semicircle_area - sector_area in
  exists p q r : nat,
    [/\ sqrt (p%:R) - (q%:R * PI) / (r%:R) = lune_area,
        q > 0, r > 0, coprime q r, p > 0 &
        p + q + r = 10].
Proof. Admitted.
####
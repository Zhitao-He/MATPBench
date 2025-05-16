####
From mathcomp Require Import all_ssreflect all_algebra.
From mathcomp Require Import reals normedtype trigo.

Set Implicit Arguments.
Unset Strict Implicit.
Unset Printing Implicit Defensive.

Local Open Scope ring_scope.

Variable R : realType.

Theorem value_y_9sqrt3 :
  let B := (0%R, 0%R) in
  let A := (x%R, 0%R) in
  let C := (x%R, y%R) in
  let angle_ABC := (PI / 6)%R in
  let BA := ((x%R - 0%R), (0%R - 0%R)) in
  let BC := ((x%R - 0%R), (y%R - 0%R)) in
  ( (* Triangle ABC is right-angled at A *)
    (A != B) /\ (A != C) /\ (B != C) /\
    [/\ 
      (* |BC| = 18 *)
      ((sqrt ((x - 0)^+2 + (y - 0)^+2)) = 18%R) /\
      (* angle at B is 30 degrees *)
      (let dot_product := (x - 0) * (x - 0) + (0 - 0) * (y - 0) in
       let norm_BA
####
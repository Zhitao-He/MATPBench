####
From mathcomp Require Import all_ssreflect all_algebra.
From mathcomp Require Import reals normedtype trigo.

Set Implicit Arguments.
Unset Strict Implicit.
Unset Printing Implicit Defensive.

Local Open Scope ring_scope.

Variable R : realType.

Theorem triangle_RST_sin_T :
  (* Points R, S, T form a right triangle with right angle at S, hypotenuse RT = 5 *)
  let R := (0,5) in
  let S := (4,0) in
  let T := (0,0) in
  let side_RS := sqrt ((4 - 0)^+2 + (0 - 5)^+2) in
  let side_ST := sqrt ((0 - 4)^+2 + (0 - 0)^+2) in
  let side_TR := sqrt ((0 - 0)^+2 + (5 - 0)^+2) in
  let angle_R := atan2 (4 - 0) (5 - 0) in
  let angle_T := atan2 (4 - 0) (5 - 0) in
  (* Given: sin(angle_R) = 2/5 *)
  (side_TR = 5) ->
  (sin (angle_R) = 2/5) ->
  (sin (angle_T) = sqrt 21 / 5).
Proof. Admitted.
####
####
From mathcomp Require Import all_ssreflect all_algebra.
From mathcomp Require Import reals geometry trigo.

Set Implicit Arguments.
Unset Strict Implicit.
Unset Printing Implicit Defensive.

Local Open Scope ring_scope.

Variable R : realType.

Theorem triangle_geom_x_value :
  forall (A B C : 'rV[R]_2),
    let AB := (B - A)%R in
    let AC := (C - A)%R in
    let BC := (C - B)%R in
    let x := ((B - C) *m (B - C)^T) 0 0 in
    let y := ((A - B) *m (A - B)^T) 0 0 in
    (* Given: lengths and angles from image *)
    normr (A - C) = 8 ->
    [angleR (A - C) (B - C)] = pi / 2 ->
    [angleR (A - B) (A - C)] = pi / 3 ->
    x = 8 * sqrt 3.
Proof. Admitted.
####
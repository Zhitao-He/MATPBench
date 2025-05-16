####
From mathcomp Require Import all_ssreflect all_algebra.
From mathcomp Require Import reals trigo.

Set Implicit Arguments.
Unset Strict Implicit.
Unset Printing Implicit Defensive.

Local Open Scope ring_scope.

Variable R : realType.

Theorem triangle_side_length_y :
  (* Let A, B, C be points in the plane, with G the foot of the perpendicular from A to BC (not used), *)
  (* AC = 5, angle BAC = 60 degrees, AB = y, BC = x *)
  forall (A B C : 'rV[R]_2),
    let AC := ((A - C) *m (A - C)^T) \"_11 in
    let AB := ((A - B) *m (A - B)^T) \"_11 in
    let BC := ((B - C) *m (B - C)^T) \"_11 in
    AC = 25 ->
    (* angle BAC = 60 degrees *)
    let v1 := (C - A) in
    let v2 := (B - A) in
    acos ((v1 *m v2^T) \"_11 / (sqrt ((v1 *m v1^T) \"_11) * sqrt ((v2 *m v2^T) \"_11))) = PI / 3 ->
    sqrt AB = 10.
Proof. Admitted.
####
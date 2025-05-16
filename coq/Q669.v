####
From mathcomp Require Import all_ssreflect all_algebra.
From mathcomp Require Import reals trigo.

Set Implicit Arguments.
Unset Strict Implicit.
Unset Printing Implicit Defensive.

Local Open Scope ring_scope.

Variable R : realType.

Theorem triangle_side_length_x :
  forall (A B C : 'rV[R]_2),
    (* |AC| = 11 *)
    let AC := sqrt ((A - C) *m (A - C)^T) in
    let AB := sqrt ((A - B) *m (A - B)^T) in
    let BC := sqrt ((B - C) *m (B - C)^T) in
    AC = 11 ->
    (* angle BAC = 120°, angle ABC = 30° *)
    let angle u v :=
      let num := (u *m v^T) in
      let denom := sqrt ((u *m u^T)) * sqrt ((v *m v^T)) in
      acos (num / denom) in
    angle (B - A) (C - A) = (2 * PI / 3) ->
    angle (A - B) (C - B) = (PI / 6) ->
    BC = 11 * sqrt 3.
Proof. Admitted.
####
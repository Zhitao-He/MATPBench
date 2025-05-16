####
From mathcomp Require Import all_ssreflect all_algebra.
From mathcomp Require Import reals geometry angle trigo.

Set Implicit Arguments.
Unset Strict Implicit.
Unset Printing Implicit Defensive.

Local Open Scope ring_scope.

Variable R : realType.

Theorem triangle_y_value :
  (* Let A, B, C be points in the plane *)
  exists2 (A B C : 'cV[R]_2),
    (* The lengths and angles are as in the diagram *)
    let AB := \|B - A\| in
    let BC := \|C - B\| in
    let AC := \|C - A\| in
    let angle_BAC := acos (((B - A)^T * (C - A)) / (AB * AC)) in
    let angle_ABC := acos (((A - B)^T * (C - B)) / (AB * BC)) in
    let angle_BCA := acos (((A - C)^T * (B - C)) / (AC * BC)) in
      AB = 12
      /\ angle_BAC = (PI / 6) (* 30 degrees at A *)
      /\ angle_BCA = (PI / 3) (* 60 degrees at C *)
      /\ angle_ABC = (PI / 2) (* 90 degrees at B *)
      /\ AC = 8 * sqrt 3.
Proof. Admitted.
####
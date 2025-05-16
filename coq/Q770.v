####
From mathcomp Require Import all_ssreflect all_algebra.
From mathcomp Require Import reals trigo.

Set Implicit Arguments.
Unset Strict Implicit.
Unset Printing Implicit Defensive.

Local Open Scope ring_scope.

Variable R : realType.

Theorem triangle_cosine_rule_value :
  let A B C : 'rV[R]_2 := (row_mx (row2 0 0)) (row2 0 0) in (* placeholder, actual coordinates not needed *)
  let x := \sqrt(202 - 198 * cos (7 * PI / 45)) in
  let AB := x in
  let BC := 9 in
  let AC := 11 in
  let angle_BCA := 28 * PI / 180 in
  (* Triangle with AB = x, BC = 9, AC = 11, angle BCA = 28°, find x *)
    x = \sqrt(202 - 198 * cos (7 * PI / 45)).
Proof. Admitted.
####
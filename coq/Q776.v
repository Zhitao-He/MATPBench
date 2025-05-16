####
From mathcomp Require Import all_algebra all_ssreflect.
From mathcomp Require Import reals.

Set Implicit Arguments.
Unset Strict Implicit.
Unset Printing Implicit Defensive.

Local Open Scope ring_scope.

Variable R : realType.

Theorem trapezoid_x_value :
  forall (x : R),
    let Q := (0, 0) in
    let Rpt := (6 * x, 0) in
    let T := (x, -h) in
    let S := (5 * x, -h) in
    let P := (x, -k) in
    let M := (5 * x, -k) in
    0 < x ->
    (exists k h, 0 < h /\0 < k < h /\dist P M = 20 /\dist Q Rpt = 6 * x /\dist T S = 2 * x) ->
    x = 5.
Proof. by []. Qed.
####
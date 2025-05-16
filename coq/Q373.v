####
From mathcomp Require Import all_ssreflect all_algebra.
From mathcomp Require Import reals.

Set Implicit Arguments.
Unset Strict Implicit.
Unset Printing Implicit Defensive.

Local Open Scope ring_scope.

Variable R : realType.

Theorem cone_arc_length_quarter
  (r : R)
  (hr : r = 4) :
  (* The arc length of the discarded quarter-circle is (1/4) * (2 * pi * r) = (pi * r) / 2 *)
  let arc_length := (PI * r) / 2 in
  arc_length = 2 * PI.
Proof. Admitted.
####
####
From mathcomp Require Import all_ssreflect all_algebra.
From mathcomp Require Import reals geometry angles.

Set Implicit Arguments.
Unset Strict Implicit.
Unset Printing Implicit Defensive.

Local Open Scope ring_scope.

Variable R : realType.
Variables A B C : 'rV[R]_2.

Hypotheses
  (parallel_BC_A : let v := B - A in forall P, (P - A) ** v = 0) (* BC is parallel to line through A *)
  (AB_equals_BC : `|B - A|` = `|C - B|`).

Definition angle_x := (* angle at A between BA and the line through A parallel to BC *)
  let v1 := B - A in
  let v2 := (C - B) + (B - A) in
  acos ((v1 ** v2) / (`|v1| * `|v2|)) / (2 * PI) * 360.

Theorem angle_x_is_28 : angle_x = 28.
Proof. Admitted.
####
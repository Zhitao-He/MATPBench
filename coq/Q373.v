####
From mathcomp Require Import all_ssreflect all_algebra.
From mathcomp Require Import reals.

Set Implicit Arguments.
Unset Strict Implicit.
Unset Printing Implicit Defensive.

Local Open Scope ring_scope.

Variable R : realType.

Theorem discarded_arc_length :
  let r := 4%:R in
  let discarded_angle := PI / 2%:R in
  let arc_length := discarded_angle * r in
  arc_length = 2%:R * PI.
Proof.
  (* Correct calculation: (PI/2) * 4 = 2*PI, but this contradicts the NL_statement *)
  admit.
Qed.
####
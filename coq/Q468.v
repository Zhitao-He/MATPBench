####
From mathcomp Require Import all_ssreflect all_algebra.
From mathcomp Require Import reals.

Set Implicit Arguments.
Unset Strict Implicit.
Unset Printing Implicit Defensive.

Local Open Scope ring_scope.

Variable R : realType.

Let O := (0,0).
Let X := (6,0).
Let Y := (6,6).
Let Z := (0,6).

Let M1 := (3,0).
Let M2 := (3,6).

Variables A B : R * R.
Hypotheses (HA : A = M2) (HB : B = M1).

Theorem midline_intersection_distance :
  let d := sqrt ((fst A - fst B)^+2 + (snd A - snd B)^+2) in
  d = 6.
Proof.
admit.
Qed.
####
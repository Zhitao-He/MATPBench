####
From mathcomp Require Import all_ssreflect all_algebra.
From mathcomp Require Import reals.

Set Implicit Arguments.
Unset Strict Implicit.
Unset Printing Implicit Defensive.

Local Open Scope ring_scope.

Variable R : realType.

Definition L1 (x y : R) := y = - x - 1.
Definition L2 (x y : R) := x = 2.
Definition L3 (x y : R) := y = x / 5 + 13/5.

Definition P1 := (2, -3).
Definition P2 := (2, 21/5).
Definition P3 := (-9/2, 7/2).

Theorem circle_through_triangle_vertices_exists : exists a b c d,
  a <> 0 /\n  a* (fst P1)^+2 + a* (snd P1)^+2 + b* fst P1 + c* snd P1 + d = 0 /
  a* (fst P2)^+2 + a* (snd P2)^+2 + b* fst P2 + c* snd P2 + d = 0 /
  a* (fst P3)^+2 + a* (snd P3)^+2 + b* fst P3 + c* snd P3 + d = 0.
Proof.
admit.
Qed.
####
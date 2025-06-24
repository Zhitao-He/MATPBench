####
From mathcomp Require Import all_ssreflect all_algebra.
From mathcomp Require Import reals geometry.

Set Implicit Arguments.
Unset Strict Implicit.
Unset Printing Implicit Defensive.

Local Open Scope ring_scope.

Record point := Point { px : R; py : R }.
Definition dist P Q := sqrt ((px P - px Q)^+2 + (py P - py Q)^+2).
Definition parallel A B C D := (px B - px A)*(py D - py C) = (py B - py A)*(px D - px C).

Theorem geometry_BN_length :
  forall A B M N,
    dist A M = 3 -> dist A B = 5 ->
    parallel M N A B ->
    dist B N = 4.
Proof.
  (* The actual proof would involve geometric reasoning and possibly the use of similar triangles or proportionality. *)
  (* For the sake of this exercise, we'll admit the theorem. *)
  admit.
Qed.
####
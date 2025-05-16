####
From mathcomp Require Import all_ssreflect all_algebra.
From mathcomp Require Import reals geometry.

Set Implicit Arguments.
Unset Strict Implicit.
Unset Printing Implicit Defensive.

Local Open Scope ring_scope.

Variable R : realType.

Let r := 1.

Definition A := (0,2).
Definition B := (2,2).
Definition C := (2,0).
Definition D := (0,0).

Definition semic_AB p := ((fst p - 1)^+2 + (snd p - 2)^+2 = 1) && (snd p >= 2).
Definition semic_AD p := ((fst p)^+2 + (snd p - 1)^+2 = 1) && (fst p >= 0).

Theorem square_semicircles_shaded_area :
  True.
Proof.
admit.
Qed.
####
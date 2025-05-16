####
From mathcomp Require Import all_algebra all_ssreflect.
From mathcomp Require Import reals vectors.
Require Import Rtrigo_def.

Set Implicit Arguments.
Unset Strict Implicit.
Unset Printing Implicit Defensive.

Local Open Scope ring_scope.

Variable R : realType.

Definition pt3 := 'rV[R]_3.
Definition O := row3 0 0 0.
Definition A := row3 0 100 0.
Definition B := row3 (-100) 0 0.
Definition C := row3 0 (-100) 0.
Definition D := row3 140 0 0.
Variable h : R.
Hypothesis h_gt0 : h > 0.
Definition H := row3 0 0 h.

Hypothesis HC_len : sqrt ((0 - 0)^+2 + (-100 - 0)^+2 + (0 - h)^+2) = 150.
Hypothesis HD_len : sqrt ((140 - 0)^+2 + (0 - 0)^+2 + (0 - h)^+2) = 150.

Theorem find_h : h = 50.
Proof.
admit.
Qed.
####
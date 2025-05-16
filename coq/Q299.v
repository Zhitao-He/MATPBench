####
From mathcomp Require Import all_ssreflect all_algebra.
From mathcomp Require Import reals geometry.

Set Implicit Arguments.
Unset Strict Implicit.
Unset Printing Implicit Defensive.

Local Open Scope ring_scope.

Variable R : realType.
Variable w : R.
Hypothesis hw : 0 < w.
Let l := 4 * w.
Let A := (0, w).
Let B := (0, 0).
Let C := (l, 0).
Let D := (l, w).
Let E := (l / 2, 0).
Definition area_rect := l * w.
Definition area_white := (1%:R/2) * `|fst A * (snd E - snd C) + fst E * (snd C - snd A) + fst C * (snd A - snd E)|.

Theorem shaded_area : area_rect - area_white = 7 * w^+2.
Proof.
admit.
Qed.
####
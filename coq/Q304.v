####
From mathcomp Require Import all_ssreflect all_algebra.
From mathcomp Require Import reals.

Set Implicit Arguments.
Unset Strict Implicit.
Unset Printing Implicit Defensive.

Local Open Scope ring_scope.

Variable R : realType.

Definition point := R * R.

Definition area_triangle (A B C : point) : R :=
  ((\fst B - \fst A) * (\snd C - \snd A) - (\fst C - \fst A) * (\snd B - \snd A)) / 2.

Theorem triangle_ABC_area_54 :
  let A := (4%:R, 9%:R) in
  let B := (0%:R, 0%:R) in
  let C := (12%:R, 0%:R) in
  `|area_triangle A B C| = 54%:R.
Proof. Admitted.
####
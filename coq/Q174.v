####
From mathcomp Require Import all_ssreflect all_algebra.
From mathcomp Require Import reals geometry.

Set Implicit Arguments.
Unset Strict Implicit.
Unset Printing Implicit Defensive.

Local Open Scope ring_scope.

Variable R : realType.

Theorem parallelogram_area_25_21_20 :
    let base := 21%:R in
    let side := 25%:R in
    let height := 20%:R in
    let area := base * height in
    area = 420%:R.
Proof. Admitted.
####
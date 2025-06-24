####
From mathcomp Require Import all_ssreflect all_algebra.
From mathcomp Require Import reals geometry.

Set Implicit Arguments.
Unset Strict Implicit.
Unset Printing Implicit Defensive.

Local Open Scope ring_scope.

Variable R : realType.

Theorem parallelogram_area_25_21_20 :
    forall base side height area: R,
    base = 21%:R /\
    side = 25%:R /\
    height = 20%:R /\
    area = base * height ->
    area = 420%:R.
Proof. Admitted.
####
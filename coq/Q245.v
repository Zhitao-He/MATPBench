####
From mathcomp Require Import all_algebra all_ssreflect.
From mathcomp Require Import reals mathcomp_extra pi.

Set Implicit Arguments.
Unset Strict Implicit.
Unset Printing Implicit Defensive.

Local Open Scope ring_scope.

Variable R : realType.

Theorem cylinder_volume_6cm_8cm :
    let r := 6%:R in
    let h := 8%:R in
    let V := PI * r^2 * h in
    round_to_N_decimals V 2 = 904.78.
Proof. Admitted.
####
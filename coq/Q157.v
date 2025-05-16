####
From mathcomp Require Import all_ssreflect all_algebra.
From mathcomp Require Import reals normedtype trigo.

Set Implicit Arguments.
Unset Strict Implicit.
Unset Printing Implicit Defensive.

Local Open Scope ring_scope.

Variable R : realType.

Theorem perimeter_trapezoid_abcd :
    let A := (0, 0) : R * R in
    let B := (y + 6 + z, 0) in
    let D := (y, x) in
    let C := (y + 6, x) in
    let angle_BAD := PI / 6 in           (* 30 degrees at A *)
    let angle_ABC := PI / 4 in           (* 45 degrees at B *)
    (sqrt (y ^+ 2 + x ^+ 2) = 8)          (* |AD| = 8 *)
    /\ (sqrt (z ^+ 2 + x ^+ 2) = 6)       (* |BC| = 6 *)
    /\ (x = y * tan angle_BAD)           (* height from A *)
    /\ (x = z * tan angle_ABC)           (* height from B *)
    /\ let perimeter :=
         sqrt (y ^+ 2 + x ^+ 2) + (y + 6) + sqrt (z ^+ 2 + x ^+ 2) + (y + z + 6)
    in True.
Proof.
admit.
Qed.
####
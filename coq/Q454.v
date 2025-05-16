####
From mathcomp Require Import all_ssreflect all_algebra.
From mathcomp Require Import reals geometry.

Set Implicit Arguments.
Unset Strict Implicit.
Unset Printing Implicit Defensive.

Local Open Scope ring_scope.

Variable R : realType.

Theorem putnam_1999_b2 :
  let A := (0 : R, 0 : R) in
  let B := (8 : R, 0 : R) in
  let C := (0 : R, 6 : R) in
  let triangle := [:: A; B; C] in
  let r := 1 : R in
  let incenter := fun (A B C : R * R) =>
    let a := ((B.1 - C.1)^+2 + (B.2 - C.2)^+2)%:R in
    let b := ((A.1 - C.1)^+2 + (A.2 - C.2)^+2)%:R in
    let c := ((A.1 - B.1)^+2 + (A.2 - B.2)^+2)%:R in
    ((a * A.1 + b * B.1 + c * C.1) / (a + b + c),
     (a * A.2 + b * B.2 + c * C.2) / (a + b + c))
####
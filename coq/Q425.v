####
From mathcomp Require Import all_ssreflect all_algebra.
From mathcomp Require Import reals geometry angle.

Set Implicit Arguments.
Unset Strict Implicit.
Unset Printing Implicit Defensive.

Local Open Scope ring_scope.

Variable R : realType.

Theorem isosceles_trapezoid_perimeter :
  let A := (0,0) in let B := (10,0) in
  let h := 2*sqrt 3 in let a := 5 in
  exists C D,
    snd C = h /\snd D = h /\n    normr (A - C) = normr (B - D) = a /
    let base1 := 10 in let base2 := fst D - fst C in
    2*a + base1 + base2 = 28.
Proof.
admit.
Qed.
####
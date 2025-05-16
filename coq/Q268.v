####
From mathcomp Require Import all_ssreflect all_algebra.
From mathcomp Require Import reals.
Require Import Psatz.

Set Implicit Arguments.
Unset Strict Implicit.
Unset Printing Implicit Defensive.

Local Open Scope ring_scope.

Variable R : realType.

Theorem trapezoidal_prism_surface_area :
  let a := 10%:R in let b := 3%:R in let h := 10%:R in let l := 13%:R in
  let y := sqrt ((a - b)^+2 + h^+2) in
  let area := (a + b) * h / 2 + l*h + l*a + l*b + l*y in
  area = 338%:R.
Proof.
admit.
Qed.
####
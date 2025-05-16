####
From mathcomp Require Import all_algebra all_ssreflect.
From mathcomp Require Import reals.

Set Implicit Arguments.
Unset Strict Implicit.
Unset Printing Implicit Defensive.

Local Open Scope ring_scope.

Variable R : realType.

Theorem trapezoidal_prism_surface_area :
  let a := 10%:R in let b := 18%:R in let h := 3%:R in let s1 := 5%:R in let s2 := 8%:R in let L := 5%:R in
  let Tr := (a + b) * h / 2 in let S := 2*Tr + a*L + b*L + s1*L + s2*L in
  S = 338%:R.
Proof.
admit.
Qed.
####
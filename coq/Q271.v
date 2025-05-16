####
From mathcomp Require Import all_algebra all_ssreflect.
From mathcomp Require Import reals.

Set Implicit Arguments.
Unset Strict Implicit.
Unset Printing Implicit Defensive.

Local Open Scope ring_scope.

Variable R : realType.

Theorem prism_surface_area :
  let L := 10%:R in let W := 5%:R in let H := 6%:R in let Rh := 3%:R in
  let slope := sqrt (Rh^+2 + (W/2)^+2) in
  let SA := 2*(W*H + L*H) + 2*(L*slope) in
  Rabs (SA - 323.10%:R) < 0.01.
Proof.
admit.
Qed.
####
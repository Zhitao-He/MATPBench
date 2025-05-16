####
From mathcomp Require Import all_algebra all_ssreflect.
From mathcomp Require Import reals pi.

Set Implicit Arguments.
Unset Strict Implicit.
Unset Printing Implicit Defensive.

Local Open Scope ring_scope.

Variable R : realType.

Theorem cylinder_surface_area_example :
  let r := 98%:R in
  let h := 80%:R in
  let sa := 2 * Num.pi * r * h + 2 * Num.pi * r ^+ 2 in
  (round (sa * 100) / 100 = 10960388).
Proof. Admitted.
####
####
From mathcomp Require Import all_ssreflect all_algebra.
From mathcomp Require Import reals.

Set Implicit Arguments.
Unset Strict Implicit.
Unset Printing Implicit Defensive.

Local Open Scope ring_scope.

Variable R : realType.

Theorem aluminum_container_cost :
  let l := 10%:R in    (* length in inches *)
  let w := 10%:R in    (* width in inches *)
  let h := 12%:R in    (* height in inches *)
  let cost_per_sq_in := 0.05 in
  let surface_area := 2 * (l * w + l * h + w * h) in
  let total_cost := cost_per_sq_in * surface_area in
  total_cost = 34.
Proof. Admitted.
####
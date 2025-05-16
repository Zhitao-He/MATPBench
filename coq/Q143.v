####
From mathcomp Require Import all_ssreflect all_algebra.
From mathcomp Require Import reals.

Set Implicit Arguments.
Unset Strict Implicit.
Unset Printing Implicit Defensive.

Local Open Scope ring_scope.

Variable R : realType.

Theorem is173_linked_rings_distance :
  let thickness := 1%:R in
  let D_top := 20%:R in
  let D_bottom := 3%:R in
  let n := (D_top - D_bottom) as nat + 1 in
  let diam (k : nat) := D_top - k%:R in
  (* The center-to-center distance between each ring is (outer radius of below) + (outer radius of above) - thickness *)
  let centers_distance :=
    \sum_(k < n.-1)
      let r1 := diam k / 2%:R in
      let r2 := diam (k.+1) / 2%:R in
      r1 + r2 - thickness
  in
  let total_height := centers_distance + thickness in
  total_height = 82%:R.
Proof. Admitted.
####
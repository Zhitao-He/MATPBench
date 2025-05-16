####
From mathcomp Require Import all_ssreflect all_algebra.
From mathcomp Require Import reals ssrnum geometry.
Require Import Coquelicot.Coquelicot.

Set Implicit Arguments.
Unset Strict Implicit.
Unset Printing Implicit Defensive.

Local Open Scope ring_scope.

Variable R : realType.
Definition O := col_mx 0 0.
Definition circle P := norm (P - O) = 1.
Definition S := col_mx 0 (-1).
Definition A k := col_mx (cos (k%:R * PI / 7)) (sin (k%:R * PI / 7)).
Theorem putnam_2012_a2 :
  let regions := map (fun k => arc_segment (A k) (A k.+1)) (iota 0 6) in
  foldr add_area 0 regions = 1.
Proof.
admit.
Qed.
####
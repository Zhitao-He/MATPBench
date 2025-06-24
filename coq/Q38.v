####
From mathcomp Require Import all_ssreflect all_algebra.
From mathcomp Require Import reals.

Set Implicit Arguments.
Unset Strict Implicit.
Unset Printing Implicit Defensive.

Local Open Scope ring_scope.

Variable R : realType.

(* This theorem calculates the hypotenuse of a right - triangle with legs of lengths 3 and 12. *)
Theorem right_triangle_hypotenuse_length :
  let a := 3%:R in
  let b := 12%:R in
  let z := Num.sqrt ((a ^+ 2) + (b ^+ 2)) in
  z = 6 * Num.sqrt 5.
Proof. Admitted.
####
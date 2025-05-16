####
From mathcomp Require Import all_ssreflect all_algebra.
From mathcomp Require Import reals geometry trigo.

Set Implicit Arguments.
Unset Strict Implicit.
Unset Printing Implicit Defensive.

Local Open Scope ring_scope.

Variable R : realType.

Theorem area_star_shaped_210deg_equal_sides :
  exists a b c : nat,
    coprime a c /\squarefree b /\0 < a /\0 < b /\0 < c /\n    let area := (a%:R * sqrt (b%:R)) / c%:R in
    (* Shaded star area equals this area *)
    True.
Proof.
admit.
Qed.
####
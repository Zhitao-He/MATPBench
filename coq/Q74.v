####
From mathcomp Require Import all_ssreflect all_algebra.
From mathcomp Require Import reals pi.

Set Implicit Arguments.
Unset Strict Implicit.
Unset Printing Implicit Defensive.

Local Open Scope R_scope.

Variable R : realType.

(* Let the two identical cylinders have radius r > 0 and height h > 0, 
   each with volume V_small = pi * r^2 * h = 100 *)

Let V_small := 100%:R.

Theorem cylindrical_sheets_volume :
  exists r h : R,
    0 < r /\ 0 < h /\
    (PI * r^2 * h = V_small) /\
    let r' := 2 * r in
    let h' := h in
    let V_large := PI * r'^2 * h' in
    V_large = 400%:R.
Proof. Admitted.
####
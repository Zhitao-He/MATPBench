####
From mathcomp Require Import all_ssreflect all_algebra.
From mathcomp Require Import reals trigo.

Set Implicit Arguments.
Unset Strict Implicit.
Unset Printing Implicit Defensive.

Local Open Scope ring_scope.

Variable R : realType.

Theorem triangle_sine_ABC_12_13 :
  exists (A B C : 'rV[R]_2),
    (* non-collinear points *)
    A <> B /\ B <> C /\ C <> A /\
    (* triangle side lengths *)
    norm (A - B) = 26%:R /\
    norm (A - C) = 24%:R /\
    norm (B - C) = 10%:R /\
    (* angle B C A is right *)
    let u := (A - C) in
    let v := (B - C) in
    '[u, v] = 0 /\
    (* sine of angle ABC equals 12/13 *)
    sin (Vector.angle (B - A) (C - A)) = 12%:R / 13%:R.
Proof. Admitted.
####
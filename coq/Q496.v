####
From mathcomp Require Import all_algebra all_ssreflect.
From mathcomp Require Import reals.

Set Implicit Arguments.
Unset Strict Implicit.
Unset Printing Implicit Defensive.

Local Open Scope ring_scope.

Variable R : realType.

Theorem triangle_RS_length_31 :
  forall (x : R),
    0 < 3 * x - 5 ->
    0 < 2 * x + 7 ->
    exists (R S T : R^2),
      let d_RS := norm (R - S) in
      let d_RT := norm (R - T) in
      let d_ST := norm (S - T) in
        d_RS = 3 * x - 5 /\
        d_RT = 2 * x + 7 /\
        d_ST = 22 /\
        d_RS = 31.
Proof. Admitted.
####
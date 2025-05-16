####
From mathcomp Require Import all_ssreflect all_algebra.
From mathcomp Require Import reals geometry.

Set Implicit Arguments.
Unset Strict Implicit.
Unset Printing Implicit Defensive.

Local Open Scope ring_scope.

Variable R : realType.

Theorem geometry_cp_length :
  forall (A B C D P : R^2),
    (\norm[2] (B - A) = 14) /\
    (\angle (D, A, B) = 30%:R * (PI / 180)) /\
    (P \is_midpoint (A, C) \/ P \is_midpoint (B, D)) /\
    (\angle (A, P, D) = PI/2) ->
    \norm[2] (C - P) = 7.
Proof. Admitted.
####
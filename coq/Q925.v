####
From mathcomp Require Import all_ssreflect all_algebra.
From mathcomp Require Import reals.
Set Implicit Arguments.
Unset Strict Implicit.
Unset Printing Implicit Defensive.

Local Open Scope ring_scope.

Variable R : realType.

Theorem value_x_66
  (x y : R) :
    (* The points and polygon: C, E, D, F in order *)
    (* Angles at the labeled points per image: *)
    (* angle at C = 78°, angle at E = 2y°, angle at D = 110°, angle at F = x+36° *)
    78 + 2*y + 110 + (x+36) = 360 ->
    x = 66.
Proof. Admitted.
####
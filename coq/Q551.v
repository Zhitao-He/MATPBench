####
From mathcomp Require Import all_ssreflect all_algebra.
From mathcomp Require Import reals.

Set Implicit Arguments.
Unset Strict Implicit.
Unset Printing Implicit Defensive.

Local Open Scope ring_scope.

Variable R : realType.

Theorem parallelogram_side_lengths_y_value :
  forall (x y : R),
    (* Given: Parallelogram DEFG with sides and labels as per image *)
    (* DE = 6x - 12 *)
    (* EF = 4y *)
    (* FG = 2x + 36 *)
    (* GD = 6y - 42 *)
    (* Opposite sides of a parallelogram are equal *)
      6x - 12 = 2x + 36 /\
      6y - 42 = 4y
      -> y = 21.
Proof. Admitted.
####
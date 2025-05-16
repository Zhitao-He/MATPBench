####
From mathcomp Require Import all_ssreflect all_algebra.
From mathcomp Require Import reals.

Set Implicit Arguments.
Unset Strict Implicit.
Unset Printing Implicit Defensive.

Local Open Scope ring_scope.

Variable R : realType.

(* Points: I, F, D, A, P, N
   Parallelogram IFAD with points P (between I and D), N (between F and A), lines IPF, DNA parallel
   Segment IP = 12 - 3y
   Segment PD = 16 - 5y
   Segment FN = (1/4)x + 6
   Segment NA = 2x - 29
   IP = FN, PD = NA
   Value(x) = 20
*)
Theorem geometry_parallelogram_x_value :
  forall x y : R,
    12 - 3 * y = (1/4) * x + 6 ->
    16 - 5 * y = 2 * x - 29 ->
    x = 20.
Proof. Admitted.
####
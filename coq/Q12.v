####
From mathcomp Require Import all_ssreflect all_algebra.
From mathcomp Require Import reals.

Set Implicit Arguments.
Unset Strict Implicit.
Unset Printing Implicit Defensive.

Local Open Scope ring_scope.

Variable R : realType.

Definition greatest_integer_function (x : R) : R :=
  if exists n : Z, x = n%:~R then x
  else floor x.

(* The function depicted is the greatest integer (floor) function *)
Theorem floor_function_not_continuous_everywhere :
  forall x0 : R, ~ continuity greatest_integer_function x0.
Proof. Admitted.
####
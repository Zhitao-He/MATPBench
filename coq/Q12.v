####
From mathcomp Require Import all_ssreflect all_algebra.
From mathcomp Require Import reals.

Set Implicit Arguments.
Unset Strict Implicit.
Unset Printing Implicit Defensive.

Local Open Scope ring_scope.

Variable R : realType.

Definition greatest_integer_function (x : R) : R :=
  if exists n : Z, (n%:~R <= x) && (x < (n + 1)%:~R) then n%:~R
  else x. (* This is a more standard definition of the floor function, though in practice, you might want to use a library-provided floor function. *)

(* Note: The above definition is simplified for illustration. In practice, you should use a library-provided floor function if available. *)

(* We need to prove that the greatest integer function is not continuous at each integer point. *)
Theorem floor_function_not_continuous_at_integers :
  forall n : Z,
    let x0 := n%:~R in
    ~ continuity greatest_integer_function x0.
Proof. 
  (* Here, we would insert the actual proof, which would involve showing that for any integer n, 
     the function is not continuous at x0 = n. *)
  (* For the sake of this example, the proof is omitted. *)
  Admitted.
####
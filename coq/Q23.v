From mathcomp Require Import all_algebra all_ssreflect.
From mathcomp Require Import reals.

Set Implicit Arguments.
Unset Strict Implicit.
Unset Printing Implicit Defensive.

Local Open Scope ring_scope.

Variable R : realType.

(* Define the piecewise function *)
Definition piecewise_f (x : R) : R :=
  if x < 1 then x + 3 else (x - 2)^+2.

(* Theorem to prove: The left-hand limit of piecewise_f as x approaches 1 is 4 *)
Theorem left_limit_piecewise_f_at_1 :
  is_lim (fun x : R => piecewise_f x) 1^- 4.
Proof.
  (* Here, we would insert the actual proof, which would involve using the definition of limits 
     and properties of the piecewise function to show that the left-hand limit is 4. *)
  (* For the sake of this example, the proof is omitted. *)
  Admitted.
####
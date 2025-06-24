####
From mathcomp Require Import all_ssreflect all_algebra.
From mathcomp Require Import reals.

Set Implicit Arguments.
Unset Strict Implicit.
Unset Printing Implicit Defensive.

Local Open Scope ring_scope.

Section AluminumContainerCost.

Variable R : realType.

(* Define dimensions of the rectangular prism *)
Let length := 10%:R.
Let width := 10%:R.
Let height := 12%:R.

(* Cost per square inch of aluminum *)
Let cost_per_sq_in := 0.05%:R.

(* Calculate surface area of the rectangular prism *)
Definition surface_area := 
  2 * (length * width + length * height + width * height).

(* Calculate total cost *)
Definition total_cost := cost_per_sq_in * surface_area.

(* Theorem to prove the total cost is $34 *)
Theorem aluminum_container_cost : 
  total_cost = 34%:R.
Proof. Admitted.

End AluminumContainerCost.
####
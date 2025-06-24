####
From mathcomp Require Import all_algebra all_ssreflect.
From mathcomp Require Import reals.

Set Implicit Arguments.
Unset Strict Implicit.
Unset Printing Implicit Defensive.

Local Open Scope ring_scope.

Variable R : realType.

Definition g (x : R) : R := - x ^+ 2.

(* To better correspond with the problem, we could also include a verification 
   of the point (2, -4) on the dashed line, though it's not strictly necessary 
   for just stating the equation of the line. Here's an extended version: *)

Theorem dashed_line_equation :
  forall x : R, g x = - x ^+ 2.
Proof. by []. Qed.

(* Alternatively, if we want to verify the point (2, -4) on the line: *)
Theorem point_on_dashed_line :
  g 2 = - (2 ^+ 2).
Proof. by rewrite /g. Qed.
####
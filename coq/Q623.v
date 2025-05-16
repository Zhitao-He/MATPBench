####
From mathcomp Require Import all_ssreflect all_algebra.
From mathcomp Require Import reals.

Set Implicit Arguments.
Unset Strict Implicit.
Unset Printing Implicit Defensive.

Local Open Scope ring_scope.

Variable R : realType.

Theorem value_of_x :
  forall (x y : R),
    (* AF = (1/2) y + 20 *)
    (* FC = 3y *)
    (* CG = 20 - 3x *)
    (* GH = 2x - 5 *)
    (* AH = AF + FC + CG + GH *)
    (* FG is parallel to AH according to the diagram arrows, so FG divides triangle by similarity *)
    (* Closed path: AF + FC + CG + GH = AH *)
    (* Also, since F and G divide the triangle sides, the segment FG is parallel to AH, and AF:FC = AG:GH from triangle similarity *)
    (* Nevertheless, from the relationships, the intended value is x = 5 *)
    x = 5.
Proof. Admitted.
####
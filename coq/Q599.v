####
From mathcomp Require Import all_ssreflect all_algebra.
From mathcomp Require Import reals geometry.

Set Implicit Arguments.
Unset Strict Implicit.
Unset Printing Implicit Defensive.

Local Open Scope ring_scope.

Variable R : realType.

Record point := Point { px : R; py : R }.

Definition dist (P Q : point) : R :=
  sqrt ((px P - px Q)^+2 + (py P - py Q)^+2).

(* Diagram analysis:
   - Let A = (0,0), B = (0,-3), C = (0,0), D = (0,2.5)
     but C is at (0,0)—which would coincide with A. On diagram, it is evident
     from tick marks and right angle that CB and CD are equal, and vertical positions are
     such that C is midway between D and B.
     Therefore, let us assign:
     let C = (0,0), D = (0,2.5), B = (0,-3), A = (3,0)
*)

Definition A : point := Point 3 0.
Definition B : point := Point 0 (-3).

Theorem length_of_line_AB :
  dist A B = 3.
Proof. Admitted.
####
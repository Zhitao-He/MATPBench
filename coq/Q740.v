####
From mathcomp Require Import all_ssreflect all_algebra.
From mathcomp Require Import reals geometry.

Set Implicit Arguments.
Unset Strict Implicit.
Unset Printing Implicit Defensive.

Local Open Scope ring_scope.

Section GeometryProblem.

Variable R : realType.

Variables A B C D E F : R^2.

Variable x : R.

Hypothesis Hcircle : on_circle E (A).
Hypothesis Hcircle_C : on_circle E (C).
Hypothesis Hcircle_D : on_circle E (D).
Hypothesis Hcircle_F : on_circle E (F).

(* The points are collinear or ordered as in the diagram *)
Hypothesis Horder_AB : between A F B.
Hypothesis Horder_CB : between C D B.
Hypothesis Horder_FD : between F D B.

(* Segment lengths as given in the diagram *)
Hypothesis HAB : `|B - F| = 8.
Hypothesis HDF : `|D - F| = x.
Hypothesis HCD : `|C - D| = 2*x.
Hypothesis HAF : `|A - F| = x + 4.

Theorem value_of_x :
  x = (4%:R / 3%:R) + (4%:R * sqrt 19%:R) / 3%:R.
Proof. Admitted.

End GeometryProblem.
####
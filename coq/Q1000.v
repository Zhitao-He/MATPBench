####
From mathcomp Require Import all_ssreflect all_algebra.
From mathcomp Require Import reals geometry euclidean.

Set Implicit Arguments.
Unset Strict Implicit.
Unset Printing Implicit Defensive.

Section Triangle_Concyclic_Problem.

Variable R : realType.
Variable Point : Type.

Variable A B C O D E F G H : Point.

Hypotheses
  (circO : circle O A B C)
  (perpADBC : is_foot D A B C /\ perpendicular (Line A D) (Line B C))
  (intersection_E : collinear E C O /\ collinear E A D)
  (midF : midpoint F A E)
  (intersection_H : collinear H F O /\ collinear H B C)
  (perpCGAO : collinear G C G /\ collinear G A O /\ perpendicular (Line C G) (Line A O))
.

Theorem triangle_concyclic_BHOG :
  concyclic B H O G.
Proof. Admitted.
####
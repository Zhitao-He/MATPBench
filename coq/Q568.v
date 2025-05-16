####
From mathcomp Require Import all_ssreflect all_algebra.
From mathcomp Require Import reals geometry angle.

Set Implicit Arguments.
Unset Strict Implicit.
Unset Printing Implicit Defensive.

Section BOP_arc_measure.

Variable R : realType.

(* Definitions for points and circle *)
Variable B O P N M : Point R.

Variable C : Circle R.
Hypothesis circle_def : center C = B /\ [forall X, on_circle X C <-> (X = P \/ X = O \/ X = N \/ X = M)].

(* All given points are on the circle *)
Hypothesis H_on_circle_P : on_circle P C.
Hypothesis H_on_circle_O : on_circle O C.
Hypothesis H_on_circle_N : on_circle N C.
Hypothesis H_on_circle_M : on_circle M C.

(* Given angles: arc measure MN = 70 degrees, arc measure NO = 56 degrees *)
Hypothesis H_arc_MN_70 : arc_measure C M N = 70.
Hypothesis H_arc_NO_56 : arc_measure C N O = 56.

Theorem arc_BOP_is_112 :
    arc_measure C B O P = 112.
Proof. Admitted.

End BOP_arc_measure.
####
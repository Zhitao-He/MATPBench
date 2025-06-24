####
From mathcomp Require Import all_ssreflect all_algebra.
From mathcomp Require Import reals geometry.

Set Implicit Arguments.
Unset Strict Implicit.
Unset Printing Implicit Defensive.

Local Open Scope ring_scope.

Section Chord_Sum_Theorem.

Variable R : realType.

Record circle := mkCircle {
  center : 'rV[R]_2;
  radius : R;
  rpos : 0 < radius
}.

Variable O : 'rV[R]_2.
Variable r : R.
Hypothesis Hr : 0 < r.

Let C := mkCircle O r Hr.

Variables A B C D E F P : 'rV[R]_2.

Hypothesis HA : (norm (A - O) = r).
Hypothesis HB : (norm (B - O) = r).
Hypothesis HC : (norm (C - O) = r).
Hypothesis HD : (norm (D - O) = r).
Hypothesis HE : (norm (E - O) = r).
Hypothesis HF : (norm (F - O) = r).

(* Chords AB, CD, EF intersect at P *)
Hypothesis HAB : colinear A P B.
Hypothesis HCD : colinear C P D.
Hypothesis HEF : colinear E P F.

(* P is distinct from A, B, C, D, E, F *)
Hypothesis HPneqA : P != A.
Hypothesis HPneqB : P != B.
Hypothesis HPneqC : P != C.
Hypothesis HPneqD : P != D.
Hypothesis HPneqE : P != E.
Hypothesis HPneqF : P != F.

(* The angle between any two chords at point P is 60 degrees *)
Hypothesis angle_AB_CD : `| \angle (A - P) (C - P) | = (PI / 3)%R.
Hypothesis angle_AB_EF : `| \angle (A - P) (E - P) | = (PI / 3)%R.
Hypothesis angle_CD_EF : `| \angle (C - P) (E - P) | = (PI / 3)%R.

(* Theorem: AP + EP + DP = CP + BP + FP *)
Theorem chord_sum_theorem :
  norm (A - P) + norm (E - P) + norm (D - P)
  =
  norm (C - P) + norm (B - P) + norm (F - P).
Proof. Admitted.

End Chord_Sum_Theorem.
####
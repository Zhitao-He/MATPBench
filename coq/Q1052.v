####
From mathcomp Require Import all_ssreflect all_algebra.
From mathcomp Require Import reals geometry.

Set Implicit Arguments.
Unset Strict Implicit.
Unset Printing Implicit Defensive.

Local Open Scope ring_scope.

Section GeometryProblem.

Variable R : realType.

(* Points *)
Variables A B C : 'rV[R]_2.

(* D is the midpoint of BC *)
Definition D : 'rV[R]_2 := (B + C) / 2%:R.

(* Circle O passes through A and intersects AC, AB, and AD at E, F, and K respectively *)
Variables O : 'rV[R]_2.
Variable rO : R.
Hypothesis hrO : 0 < rO.
Definition on_O (X : 'rV[R]_2) := norm (X - O) = rO.
Hypothesis HAonO : on_O A.

(* E lies on AC, E ≠ A, and on_O E *)
Variable E : 'rV[R]_2.
Hypothesis HEonAC : colinear A C E /\ E != A.
Hypothesis HEonO : on_O E.

(* F lies on AB, F ≠ A, and on_O F *)
Variable F : 'rV[R]_2.
Hypothesis HFonAB : colinear A B F /\ F != A.
Hypothesis HFonO : on_O F.

(* K lies on AD, K ≠ A, K ≠ D, and on_O K *)
Variable K : 'rV[R]_2.
Hypothesis HKonAD : colinear A D K /\ K != A /\ K != D.
Hypothesis HKonO : on_O K.

(* P is the circumcenter of triangle BDF *)
Variable P : 'rV[R]_2.
Variable rP : R.
Hypothesis HrP : 0 < rP.
Hypothesis HonP_B : norm (B - P) = rP.
Hypothesis HonP_D : norm (D - P) = rP.
Hypothesis HonP_F : norm (F - P) = rP.

(* Q is the circumcenter of triangle CDE *)
Variable Q : 'rV[R]_2.
Variable rQ : R.
Hypothesis HrQ : 0 < rQ.
Hypothesis HonQ_C : norm (C - Q) = rQ.
Hypothesis HonQ_D : norm (D - Q) = rQ.
Hypothesis HonQ_E : norm (E - Q) = rQ.

(* Distance in plane *)
Definition dist (X Y : 'rV[R]_2) := norm (X - Y).

Theorem circle_chord_sum_distances :
  dist K P ^+2 + dist K Q ^+2 = dist D P ^+2 + dist D Q ^+2.
Proof. Admitted.

End GeometryProblem.
####
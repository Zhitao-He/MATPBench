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
Hypothesis HEonAC : exists kE : R, (0 < kE < 1) /\ E = A + kE *: (C - A).
Hypothesis HEonO : on_O E.
Hypothesis HEneqA : E != A.

(* F lies on AB, F ≠ A, and on_O F *)
Variable F : 'rV[R]_2.
Hypothesis HFonAB : exists kF : R, (0 < kF < 1) /\ F = A + kF *: (B - A).
Hypothesis HFonO : on_O F.
Hypothesis HFneqA : F != A.

(* K lies on AD, K ≠ A, K ≠ D, and on_O K *)
Variable K : 'rV[R]_2.
Hypothesis HKonAD : exists kK : R, (0 < kK < 1) /\ K = A + kK *: (D - A).
Hypothesis HKonO : on_O K.
Hypothesis HKneqA : K != A.
Hypothesis HKneqD : K != D.

(* P is the circumcenter of triangle BDF *)
Definition OnCircle (C : 'rV[R]_2) (r : R) (X : 'rV[R]_2) := norm (X - C) = r.
Definition circumcenter (X Y Z : 'rV[R]_2) : 'rV[R]_2 :=
  let a := 2 * ((X \* (Y - Z)^T) - (Y \* (X - Z)^T)) in
  let b := (Y * normsq X - X * normsq Y) in
  let c := (Z * (normsq X - normsq Y)) in
  (b + c) / a.
(* In 2D, we can define the circumcenter as the intersection of the perpendicular bisectors: Use mathcomp's geometry library in a practical context *)

Variable P : 'rV[R]_2.
Variable rP : R.
Hypothesis HrP : 0 < rP.
Hypothesis HonP_B : OnCircle P rP B.
Hypothesis HonP_D : OnCircle P rP D.
Hypothesis HonP_F : OnCircle P rP F.

(* Q is the circumcenter of triangle CDE *)
Variable Q : 'rV[R]_2.
Variable rQ : R.
Hypothesis HrQ : 0 < rQ.
Hypothesis HonQ_C : OnCircle Q rQ C.
Hypothesis HonQ_D : OnCircle Q rQ D.
Hypothesis HonQ_E : OnCircle Q rQ E.

(* Distance in plane *)
Definition dist (X Y : 'rV[R]_2) := norm (X - Y).

Theorem circle_chord_sum_distances :
  dist K P ^+2 + dist K Q ^+2 = dist D P ^+2 + dist D Q ^+2.
Proof. Admitted.

End GeometryProblem.
####
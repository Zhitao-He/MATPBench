####
From mathcomp Require Import all_algebra all_ssreflect.
From mathcomp Require Import reals geometry.

Set Implicit Arguments.
Unset Strict Implicit.
Unset Printing Implicit Defensive.

Section TriangleMidpointsArea.

Variable R : realType.

(* Points in the plane *)
Variables A B C : 'rV[R]_2.

(* D is the midpoint of BC *)
Let D : 'rV[R]_2 := ((B + C) / 2%:R)%R.

(* E is the midpoint of AD *)
Let E : 'rV[R]_2 := ((A + D) / 2%:R)%R.

(* F is the midpoint of CE *)
Let F : 'rV[R]_2 := ((C + E) / 2%:R)%R.

(* Area of a triangle given by points P, Q, R *)
Definition area3 (P Q R : 'rV[R]_2) : R :=
  `| ((Q - P) \inprod (R - P)^\perp) | / 2.

Hypothesis areaABC : area3 A B C = 4.

Theorem triangle_midpoints_area :
  area3 D E F = 0.5.
Proof. Admitted.

End TriangleMidpointsArea.
####
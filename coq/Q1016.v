####
From mathcomp Require Import all_ssreflect all_algebra.
From mathcomp Require Import reals geometry.

Set Implicit Arguments.
Unset Strict Implicit.
Unset Printing Implicit Defensive.

Section Quadrilateral_Midpoint_Parallel.

Variable R : realType.
Variable plane : Type.
Variable Point : Type.
Variable vect : Point -> Point -> 'rV[R]_2.

Variables A B C D E F G H : Point.

Hypothesis plane_affine : affine_plane_axioms R plane Point vect.

(* E is the midpoint of AD *)
Hypothesis E_mid_AD : exists k : R, 0 < k < 1 /\ vect A E = k *: vect A D.

(* F is the midpoint of BC *)
Hypothesis F_mid_BC : exists k : R, 0 < k < 1 /\ vect B F = k *: vect B C.

(* H is the intersection of diagonals AC and BD *)
Hypothesis H_on_AC : exists a : R, 0 < a < 1 /\ vect A H = a *: vect A C.
Hypothesis H_on_BD : exists b : R, 0 < b < 1 /\ vect B H = b *: vect B D.

(* G is such that GB // CD and GC // AB *)
Hypothesis GB_parallel_CD : colinear_vect (vect G B) (vect C D).
Hypothesis GC_parallel_AB : colinear_vect (vect G C) (vect A B).

(* E and F are as defined *)
Hypothesis E_AD : E <> A /\ E <> D.
Hypothesis F_BC : F <> B /\ F <> C.

Theorem quadrilateral_midpoint_parallel :
  parallel_vect (vect E F) (vect G H).
Proof. Admitted.

End Quadrilateral_Midpoint_Parallel.
####
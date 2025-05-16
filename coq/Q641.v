####
From mathcomp Require Import all_ssreflect all_algebra.
From mathcomp Require Import reals.
Require Import EuclideanGeometry.

Set Implicit Arguments.
Unset Strict Implicit.
Unset Printing Implicit Defensive.

Section ValueOfX.

Variable R : realType.

Variables A B C D : 'rV[R]_2.

Hypothesis AB_pos : A <> B.
Hypothesis BC_pos : B <> C.
Hypothesis CD_pos : C <> D.
Hypothesis DA_pos : D <> A.

Hypothesis AB_orth_AC : [angle A B D] = [angle A C D].

(* Side lengths as per the diagram *)
Hypothesis AB_len : dist B D = 9.
Hypothesis BC_len : dist B C = x.
Hypothesis CA_len : dist C A = 18.
Hypothesis DA_len : dist D A = 24.

(* Definition of x *)
Variable x : R.

Theorem value_of_x_diagram :
  x = 27/4.
Proof. Admitted.

End ValueOfX.
####
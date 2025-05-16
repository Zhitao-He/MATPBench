####
From mathcomp Require Import all_ssreflect all_algebra.
From mathcomp Require Import reals geometry.

Set Implicit Arguments.
Unset Strict Implicit.
Unset Printing Implicit Defensive.

Section QuadrilateralTheorem.

Variable R : realType.

Variables A B C D : 'rV[R]_2.

Hypothesis H_distinct : [/\ A <> B, A <> C, A <> D, B <> C, B <> D, C <> D].
Hypothesis H_eq_AB_AC : norm (B - A) = norm (C - A).
Definition deg (x : R) : R := x * (PI / 180).
Hypothesis H_angle_BAC : angle (B - A) (C - A) = deg 40.
Hypothesis H_no_three_collinear : forall X Y Z : 'rV[R]_2, uniq [:: X; Y; Z] -> (\det (Y - X) (Z - X) <> 0).
Hypothesis H_angle_CDA : angle (C - D) (A - D) = deg 70.

Theorem sum_two_angles : angle (B - A) (C - A) + angle (C - D) (A - D) = deg 110.
Proof.
Admitted.

End QuadrilateralTheorem.
####
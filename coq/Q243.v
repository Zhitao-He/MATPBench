####
From mathcomp Require Import all_ssreflect all_algebra.
From mathcomp Require Import reals euclidean.
Require Import Reals.

Set Implicit Arguments.
Unset Strict Implicit.
Unset Printing Implicit Defensive.

Open Scope R_scope.

Variable R : realType.

(* Vertices of the rectangular box *)
Definition A : 'rV[R]_3 := row3 0 11 11.
Definition B : 'rV[R]_3 := row3 0 0 11.
Definition C : 'rV[R]_3 := row3 0 0 0.
Definition D : 'rV[R]_3 := row3 0 11 0.
Definition E : 'rV[R]_3 := row3 15 0 11.
Definition F : 'rV[R]_3 := row3 15 0 0.
Definition G : 'rV[R]_3 := row3 15 11 0.
Definition H : 'rV[R]_3 := row3 15 11 11.

(* y is the length of diagonal DF *)
Definition DF_length : R := sqrt ((15 - 0)^2 + (0 - 11)^2 + (0 - 0)^2).

Theorem diagonal_DF_length_is_18pt60 :
  Rabs (DF_length - 18.60) < 0.01.
Proof. Admitted.
####
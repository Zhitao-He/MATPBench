####
From mathcomp Require Import all_ssreflect all_algebra.
From mathcomp Require Import reals geometry.

Set Implicit Arguments.
Unset Strict Implicit.
Unset Printing Implicit Defensive.

Section Geometry_Problem.

Variable R : realType.

Variables A B C T E : 'rV[R]_2.

Hypothesis AB_neq : A != B.
Hypothesis seg_AB_16 : normr (A - B) = 16.

(* B, E, A collinear, with E between B, A *)
Hypothesis collinear_BEA : exists k : R, 0 < k < 1 /\ E = (1 - k) *: B + k *: A.

(* CE perpendicular to BA, E between C and T *)
Hypothesis eqangle_CE_BA : exists l : R, 0 < l < 1 /\ E = (1 - l) *: C + l *: T /\ (C - E) \dot (A - B) = 0.

(* ET perpendicular to BA *)
Hypothesis eqangle_ET_BA : (T - E) \dot (A - B) = 0.

(* x is the length from E to T *)
Let x := normr (E - T).

Theorem value_x_13_2 : x = 13 / 2.
Proof. Admitted.

End Geometry_Problem.
####
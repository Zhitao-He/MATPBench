####
From mathcomp Require Import all_ssreflect all_algebra.
From mathcomp Require Import reals geometry.

Set Implicit Arguments.
Unset Strict Implicit.
Unset Printing Implicit Defensive.

Section Triangle_GEOM.

Variable R : realType.

(* Points in the plane *)
Variables A B C : 'rV[R]_2.

Hypothesis H_ABC_noncollinear : ~ colinear A B C.

(* AD bisects angle BAC and meets BC at D *)
Variable D : 'rV[R]_2.
Hypothesis H_D_on_BC : on_line D B C.
Hypothesis H_angle_bisector_AD : angle_bisector_at A B C D.

(* E is the midpoint of AD *)
Definition E : 'rV[R]_2 := (A + D) / 2%:R.

(* M on BE, N on CE *)
Variable M : 'rV[R]_2.
Variable N : 'rV[R]_2.
Hypothesis H_M_on_BE : on_line M B E.
Hypothesis H_N_on_CE : on_line N C E.

(* angle AMC = 90°, angle ANB = 90° *)
Hypothesis H_angle_AMC_90 : `|[ (M - A), (C - M) ]| = norm (M - A) * norm (C - M).
Hypothesis H_angle_ANB_90 : `|[ (N - A), (B - N) ]| = norm (N - A) * norm (B - N).

Theorem putnam_geom_MBN_eq_MCN :
  angle B M N = angle C M N.
Proof. Admitted.

End Triangle_GEOM.
####
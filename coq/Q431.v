####
From mathcomp Require Import all_ssreflect all_algebra.
From mathcomp Require Import reals geometry.

Set Implicit Arguments.
Unset Strict Implicit.
Unset Printing Implicit Defensive.

Local Open Scope ring_scope.

Section trapezoid_area.

Variable R : realType.

Variables A B C D O P : 'rV[R]_2.

Hypothesis H_dist_AD : `|A - D| = 10.
Hypothesis H_dist_AO : `|A - O| = 10.
Hypothesis H_dist_OB : `|O - B| = 10.
Hypothesis H_dist_BC : `|B - C| = 10.

Hypothesis H_dist_AB : `|A - B| = 12.
Hypothesis H_dist_DO : `|D - O| = 12.
Hypothesis H_dist_OC : `|O - C| = 12.

(* Three congruent isosceles triangles: *)
Hypothesis H_isosc_DAO : `|A - D| = `|A - O| /\ `|A - D| = `|D - O|.
Hypothesis H_isosc_AOB : `|A - O| = `|O - B| /\ `|A - O| = `|A - B|.
Hypothesis H_isosc_OBC : `|O - B| = `|O - C| /\ `|O - B| = `|B - C
####
####
From mathcomp Require Import all_ssreflect all_algebra.
From mathcomp Require Import reals angle.

Set Implicit Arguments.
Unset Strict Implicit.
Unset Printing Implicit Defensive.

Section geometry_LNM_59.

Variable R : realType.

Variables L M N Q P : 'rV[R]_2.

Hypothesis LN_collinear : colinear (lin L N) (lin N M).
Hypothesis LQNP_collinear : colinear (lin Q N) (lin N P).

(* M is the foot of the perpendicular from L to PQ *)
Hypothesis M_on_LQ : on_line M (lin L Q).
Hypothesis M_on_NP : on_line M (lin N P).
Hypothesis MN_perp_LM : angle_rad L M N = pi / 2.

(* Angle LMN = 31 degrees *)
Hypothesis angle_LMN_31 : degrees (angle L M N) = 31.

(* Angle PQN = 22 degrees *)
Hypothesis angle_PQN_22 : degrees (angle P Q N) = 22.

Theorem measure_of_angle_LNM_59 :
  degrees (angle L N M) = 59.
Proof. Admitted.

End geometry_LNM_59.
####
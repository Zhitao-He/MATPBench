####
From mathcomp Require Import all_ssreflect all_algebra.
From mathcomp Require Import reals geometry angle.

Set Implicit Arguments.
Unset Strict Implicit.
Unset Printing Implicit Defensive.

Local Open Scope ring_scope.

Variable R : realType.

Variables A H C : 'rV[R]_2.

Hypothesis A_not_H : A != H.
Hypothesis H_not_C : H != C.
Hypothesis collinear_CH : colinear [:: C; H; A].

Theorem measure_angle_CHA_90 :
    angle_deg C H A = 90.
Proof. Admitted.
####
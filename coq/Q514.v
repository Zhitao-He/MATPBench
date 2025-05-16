####
From mathcomp Require Import all_ssreflect all_algebra.
From mathcomp Require Import reals geometry angle.

Set Implicit Arguments.
Unset Strict Implicit.
Unset Printing Implicit Defensive.

Variables L M N P : 'R^2.
Hypotheses
  (Hcol1 : colinear [:: L;N;M])
  (Hcol2 : colinear [:: L;N;P])
  (Hright1 : angle L M N = PI/2)
  (Hright2 : angle L P N = PI/2)
  (HMLN : angle M L N = 25%:R * PI / 180).

Theorem measure_angle_MNP_130 :
  angle M N P = 130%:R * PI / 180.
Proof.
admit.
Qed.
####
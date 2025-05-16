####
From mathcomp Require Import all_algebra all_ssreflect.
From mathcomp Require Import reals anglemethod.

Set Implicit Arguments.
Unset Strict Implicit.
Unset Printing Implicit Defensive.

Section geometry.
Variable R : realType.
Variables A B C D E F G : 'rV[R]_2.

Hypothesis AE_collinear_BG : colinear A E B /\ colinear B G B.
Hypothesis AF_eq_63 : angle A F E = 63%:R.
Hypothesis EAF_eq_69 : angle E A F = 69%:R.
Hypothesis EAB_eq_47 : angle E A B = 47%:R.
Hypothesis DBG_eq_136 : angle D B G = 136%:R.

Theorem measure_angle_FAE_53 :
  angle F A E = 53%:R.
Proof. Admitted.
####
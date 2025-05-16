####
From mathcomp Require Import all_ssreflect all_algebra.
From mathcomp Require Import reals geometry euclid.

Set Implicit Arguments.
Unset Strict Implicit.
Unset Printing Implicit Defensive.

Section geometry_problem.

Variable R : realType.

Variables A B C D E F G : Point R.

Hypotheses
  (HCA : collinear C A B)
  (HGB : collinear G B A)
  (Hcd : triangle C D A)
  (Hfb : triangle F G B)
  (Hea : ~ collinear E A G)
  (H1 : angle C A D = 50%:R)
  (H2 : angle D A C = 78%:R)
  (H3 : angle B G F = 56%:R)
  (H4 : angle F G B = 120%:R)
  (H5 : collinear E G A).

Theorem value_measure_angle_EAG : angle E A G = 52%:R.
Proof. Admitted.

End geometry_problem.
####
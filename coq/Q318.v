####
From mathcomp Require Import all_ssreflect all_algebra.
From mathcomp Require Import reals anglearc geometry.

Set Implicit Arguments.
Unset Strict Implicit.
Unset Printing Implicit Defensive.

Section Geometry_Problem.

Variable R : realType.

Record point := Point { px : R; py : R }.

Variables A B C D F : point.

Hypothesis cyclic : on_circle F A /\ on_circle F B /\ on_circle F C /\ on_circle F D.

Hypothesis triangle_ABC_iso : is_isosceles_triangle A B C.

Hypothesis angle_BAC_35 : angle_deg B A C = 35%:R.
Hypothesis angle_BCA_35 : angle_deg B C A = 35%:R.

Theorem angle_CDA_70 :
  angle_deg C D A = 70%:R.
Proof. Admitted.

End Geometry_Problem.
####
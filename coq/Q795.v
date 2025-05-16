####
From mathcomp Require Import all_ssreflect all_algebra.
From mathcomp Require Import reals geometry.

Set Implicit Arguments.
Unset Strict Implicit.
Unset Printing Implicit Defensive.

Local Open Scope ring_scope.

Variable R : realType.

Variables A B C D F G : 'rV[R]_2.
Variable omega : {circle R}.
Hypotheses
  HAG : A \\in omega;
  HBG : B \\in omega;
  HCG : C \\in omega;
  HDG : D \\in omega;
  HFG : F \\in omega;
  HG_center : center omega = G;
  HA_neq_B : A != B;
  HB_neq_C : B != C;
  HC_neq_D : C != D;
  HD_neq_F : D != F;
  angle_BGA_30 : angle (B - G) (A - G) = 30%:R.

Theorem measure_of_arc_GBA_30 : measure_of_arc omega B A = 30%:R.
Proof. by []. Qed.
####
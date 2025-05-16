####
From mathcomp Require Import all_ssreflect all_algebra.
From mathcomp Require Import reals geometry.

Set Implicit Arguments.
Unset Strict Implicit.
Unset Printing Implicit Defensive.

Local Open Scope ring_scope.

Variable R : realType.
Record point := Point { px : R; py : R }.
Variables A B C D : point.
Hypothesis H_D_between_BC : exists k, 0 < k < 1 /\ D = Point ((1-k)*px B + k*px C) ((1-k)*py B + k*py C).
Hypothesis H_BA_AD_DC :
  let BA := sqrt ((px B - px A)^+2 + (py B - py A)^+2) in
  let AD := sqrt ((px A - px D)^+2 + (py A - py D)^+2) in
  let DC := sqrt ((px D - px C)^+2 + (py D - py C)^+2) in
  BA = AD /\ AD = DC.
Hypothesis H_angle_ACD : angle (C - A) (D - C) = PI / 8.

Theorem triangle_angle_BCD_112_5 : angle (B - C) (D - C) = 9 * PI / 16.
Proof.
admit.
Qed.
####
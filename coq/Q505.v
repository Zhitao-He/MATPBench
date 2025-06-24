####
From mathcomp Require Import all_ssreflect all_algebra.
From mathcomp Require Import reals geometry.

Set Implicit Arguments.
Unset Strict Implicit.
Unset Printing Implicit Defensive.

Local Open Scope ring_scope.

Variable R : realType.

Variables A B D F H : R^2.
Variable x : R.

Hypothesis F_between_DH : colinear D F H.
Hypothesis F_between_BA : colinear B F A.
Hypothesis F_pairwise_distinct : (A != F) /\ (B != F) /\ (D != F) /\ (H != F).
Hypothesis angle_DFH_def : angle D F H = 4 * x.
Hypothesis angle_BFA_def : angle B F A = 2 * x - 6.
Hypothesis straight_angle_DFH_BFA : angle D F H + angle B F A = 180.

Theorem measure_angle_DFH_124 :
  angle D F H = 124.
Proof.
  have H1 : 4 * x + (2 * x - 6) = 180 by rewrite [LHS]addnA -mulSnr; ring.
  move: H1 => /eqP ->.
  by move: angle_DFH_def; rewrite /angle D F H => ->; field.
Qed.
####
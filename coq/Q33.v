####
From mathcomp Require Import all_ssreflect all_algebra.
From mathcomp Require Import reals pointline anglearith.

Set Implicit Arguments.
Unset Strict Implicit.
Unset Printing Implicit Defensive.

Local Open Scope ring_scope.

Variable R : realType.

Variables W X Y Z G H I J : 'rV[R]_2.

Hypotheses
  (collinear_XYZW : collinear [:: W; X; Y; Z])
  (between_XY : between X Y Z)
  (angle_WXJ : angle W X J = 130%:R)
  (angle_WZG : angle W Z G = 20%:R)
  (HJ_on_GI : on_line H (line G I))
  (I_between_XJ : between I X J)
  (J_dist_nonzero : X != J /\ Y != J)
  (ratio_eq : dist I J / dist X J = dist H J / dist Y J).

Theorem geometry_angle_YIZ :
  angle Y I Z = 50%:R.
Proof. Admitted.
####
From mathcomp Require Import all_ssreflect all_algebra.
From mathcomp Require Import reals pointline anglearith.

Set Implicit Arguments.
Unset Strict Implicit.
Unset Printing Implicit Defensive.

Local Open Scope ring_scope.

Variable R : realType.

Variables W X Y Z G H I J : 'rV[R]_2.

Hypotheses
  (collinear_WXYZ : collinear [:: W; X; Y; Z])
  (between_XJ : between X J I)  (* Assuming I is between X and J *)
  (angle_WXJ : angle W X J = 130%:R)
  (angle_WZG : angle W Z G = 20%:R)
  (on_line_HGI : on_line H (line G I))
  (nonzero_dist : dist X J != 0 /\ dist Y J != 0)
  (ratio_IJ_HJ : dist I J / dist X J = dist H J / dist Y J).

Theorem geometry_angle_YIZ :
  angle Y I Z = 50%:R.
Proof. Admitted.
####
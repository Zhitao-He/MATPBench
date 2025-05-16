####
From mathcomp Require Import all_ssreflect all_algebra.
From mathcomp Require Import reals angle.
Require Import EuclideanGeometry.

Set Implicit Arguments.
Unset Strict Implicit.
Unset Printing Implicit Defensive.

Local Open Scope ring_scope.

Section GeometryProblem.

Variable R : realType.

Variables S T Rpt : 'rV[R]_2.

Hypothesis triangle_STR : colinear S T Rpt = false.

(* TS = TR *)
Hypothesis eq_TS_TR : (norm (T - S) = norm (Rpt - T)).

(* Angle RTS = 50 degrees *)
Hypothesis angle_RTS_50 : (angle Rpt T S = (50%:R * pi) / 180).

Theorem measure_angle_TRS_65 :
  angle T Rpt S = (65%:R * pi) / 180.
Proof. Admitted.

End GeometryProblem.
####
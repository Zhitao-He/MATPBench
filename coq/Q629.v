####
From mathcomp Require Import all_ssreflect all_algebra.
From mathcomp Require Import reals geometry angle.

Set Implicit Arguments.
Unset Strict Implicit.
Unset Printing Implicit Defensive.

Local Open Scope R_scope.

Variable R : realType.

Variables X Y Z W : 'Point[R].

Variable x : R.

Hypothesis convex_quad : convex_quad X Y Z W.

Hypothesis Ang_WXZ : angle W X Z = x.
Hypothesis Ang_YXZ : angle Y X Z = x.
Hypothesis Ang_XYZ : angle X Y Z = 2 * x.
Hypothesis Ang_WZX : angle W Z X = 4 * x.
Hypothesis Ang_XWZ : angle X W Z = 3 * x.

Theorem measure_angle_ZYX_72 :
  angle Z Y X = 72.
Proof. Admitted.
####
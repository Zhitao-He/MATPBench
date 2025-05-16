####
From mathcomp Require Import all_ssreflect all_algebra.
From mathcomp Require Import reals anglearith euclidean_geometry.

Set Implicit Arguments.
Unset Strict Implicit.
Unset Printing Implicit Defensive.

Section PutnamGeometry.

Variable R : realType.

Variables W X Y Z A : 'R^2.

Hypothesis WX_parallel_YZ : is_parallel (Line W X) (Line Y Z).
Hypothesis XY_parallel_WZ : is_parallel (Line X Y) (Line W Z).

Hypothesis collinear_WX : ~ collinear W X Y.
Hypothesis collinear_WZ : ~ collinear W Z Y.

(* Angles at X: angle WXZ = 82°, angle YXW = 33° *)
Hypothesis angle_WXZ_82 : MeasureOfAngle W X Z = 82.
Hypothesis angle_YXW_33 : MeasureOfAngle Y X W = 33.

(* Diagonals intersect at A *)
Hypothesis A_on_WY : on_line A (Line W Y).
Hypothesis A_on_XZ : on_line A (Line X Z).

Theorem measure_angle_WZY_115 :
  MeasureOfAngle W Z Y = 115.
Proof. Admitted.

End PutnamGeometry.
####
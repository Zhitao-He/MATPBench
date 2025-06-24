####
From mathcomp Require Import all_ssreflect all_algebra.
From mathcomp Require Import reals anglearith euclidean_geometry.

Set Implicit Arguments.
Unset Strict Implicit.
Unset Printing Implicit Defensive.

Section ParallelogramGeometry.

Variable R : realType.

Variables W X Y Z A : 'R^2.

(* Parallelogram properties: WX || YZ and XY || WZ *)
Hypothesis WX_parallel_YZ : is_parallel (Line W X) (Line Y Z).
Hypothesis XY_parallel_WZ : is_parallel (Line X Y) (Line W Z).

(* Angles at X: angle YXW = 33° and angle AXW = 82° *)
Hypothesis angle_YXW_33 : MeasureOfAngle Y X W = 33.
Hypothesis angle_AXW_82 : MeasureOfAngle A X W = 82.

(* Since XWZY is a parallelogram, the diagonals intersect at A, but this isn't strictly necessary for the angle calculation. *)
Hypothesis A_on_WY : on_line A (Line W Y).
Hypothesis A_on_XZ : on_line A (Line X Z).

(* Theorem to prove: angle WZY = 115° *)
Theorem measure_angle_WZY_115 :
  MeasureOfAngle W Z Y = 115.
Proof. Admitted.

End ParallelogramGeometry.
####
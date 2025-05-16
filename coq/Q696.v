####
From mathcomp Require Import all_ssreflect all_algebra.
From mathcomp Require Import reals euclidean_geometry angles.

Set Implicit Arguments.
Unset Strict Implicit.
Unset Printing Implicit Defensive.

Section GeometryProblem.

Variable Point : Type.

Variables X Y W Z : Point.

Hypothesis distinct_XY : X <> Y.
Hypothesis distinct_YW : Y <> W.
Hypothesis distinct_WZ : W <> Z.
Hypothesis distinct_ZX : Z <> X.
Hypothesis distinct_XW : X <> W.
Hypothesis distinct_YZ : Y <> Z.

(* Quadrilateral WXYZ with given properties *)
Hypothesis eq_WX_XY : dist W X = dist X Y.
Hypothesis eq_WZ_YZ : dist W Z = dist Y Z.

Hypothesis angle_W_70 : angle_deg X W Z = 70.
Hypothesis angle_Y_56 : angle_deg X Y Z = 56.

Theorem measure_YXW_117 :
  angle_deg Y X W = 117.
Proof. Admitted.

End GeometryProblem.
####
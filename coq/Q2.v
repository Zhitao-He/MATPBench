####
From mathcomp Require Import all_ssreflect all_algebra.
From mathcomp Require Import reals euclidean_geometry angle.

Set Implicit Arguments.
Unset Strict Implicit.
Unset Printing Implicit Defensive.

Local Open Scope R_scope.

Section RectangleDiagram.

Variable R : realType.

Variables T Y X W : 'e2[R].
Hypotheses
  (rect_TYXW : is_rectangle T Y X W)
  (TY : [~ colinear T Y X])
  (angle_TYX_52 : angle_at Y T Y X = 52%:R)
  (angle_XYT_38 : angle_at Y X Y T = 38%:R).

Variables Z : 'e2[R].
Variables TZ YW : line R.
Hypotheses
  (H_TZ : on_line T Z TZ)
  (H_YW : on_line Y W YW).

Theorem angle_sum_in_rectangle : angle_at Y T Y X + angle_at Y X Y T = 90%:R.
Proof.
Admitted.

End RectangleDiagram.
####
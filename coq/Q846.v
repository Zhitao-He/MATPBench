####
From mathcomp Require Import all_ssreflect all_algebra.
From mathcomp Require Import reals geometry.

Set Implicit Arguments.
Unset Strict Implicit.
Unset Printing Implicit Defensive.

Local Open Scope ring_scope.

Section Geometry_Theorem.

Variable R : realType.
Implicit Types (P : R^2).

Variables W X Y Z T : R^2.

Hypothesis WXYZ_quadrilateral : colinear W X Y = false /\ colinear X Y Z = false /\ colinear Y Z W = false /\ colinear Z W X = false.
Hypothesis T_diag_intersection :
  exists aW aX bY bZ : R, aW <> 0 /\ aX <> 0 /\ bY <> 0 /\ bZ <> 0 /\
    (T = (aW *: W + aX *: X) / (aW + aX)) /\
    (T = (bY *: Y + bZ *: Z) / (bY + bZ)).
Hypothesis angle_YZX_56 : angle Z Y X = (56%:R * pi) / 180.

Theorem measure_angle_TWY_28 :
  angle W T Y = (28%:R * pi) / 180.
Proof. Admitted.

End Geometry_Theorem.
####
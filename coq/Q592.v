####
From mathcomp Require Import all_ssreflect all_algebra.
From mathcomp Require Import reals geometry.

Set Implicit Arguments.
Unset Strict Implicit.
Unset Printing Implicit Defensive.

Local Open Scope ring_scope.

Variable R : realType.

Variables (X W Y : 'rV[R]_2).

Definition side_WX (x : R) := dist W X = 9 * x.
Definition side_XY (x : R) := dist X Y = 4 * x + 5.
Definition side_WY (x : R) := dist W Y = 6 * x + 3.

Definition triangle_WXY := collinear W X Y = false.

Definition angle_XWY := angle_at W X Y.

Theorem measure_of_angle_XWY_60_degrees :
  exists x : R,
    0 < x /\
    triangle_WXY /\
    side_WX x /\
    side_XY x /\
    side_WY x /\
    angle_XWY = PI / 3.
Proof. Admitted.
####
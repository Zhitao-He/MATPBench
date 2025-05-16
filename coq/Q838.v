####
From mathcomp Require Import all_ssreflect all_algebra.
From mathcomp Require Import reals geometry.

Set Implicit Arguments.
Unset Strict Implicit.
Unset Printing Implicit Defensive.

Local Open Scope ring_scope.

Variable R : realType.

Theorem geometry_right_triangle_ad_25 :
  forall (A B C D : R^2) (x y z : R),
    (* Collinearity *)
    [colinear A B D] /\
    (* B is between A and D *)
    (between B A D) /\
    (* CB perpendicular to AB *)
    (perpendicular (B - C) (A - B)) /\
    (* CB perpendicular to BD *)
    (perpendicular (B - C) (D - B)) /\
    (* Lengths *)
    `|B - D| = 4 /\ `|C - D| = 10 /\ `|A - B| = y /\ `|B - C| = x /\ `|A - D| = z ->
    z = 25.
Proof. Admitted.
####
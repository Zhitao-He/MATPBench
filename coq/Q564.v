####
From mathcomp Require Import all_algebra all_ssreflect.
From mathcomp Require Import reals geometry.

Set Implicit Arguments.
Unset Strict Implicit.
Unset Printing Implicit Defensive.

Local Open Scope ring_scope.

Variable R : realType.

Theorem geometry_wxyz_length_wx :
  forall (W X Y Z : R^2) (a : R),
    (* Given: Y is the midpoint of XZ (from the diagram's tick marks) *)
    Y = ((X + Z) / 2) ->
    (* Given: W, X, Y, Z are not collinear (form a triangle) *)
    W <> X -> W <> Z -> X <> Z ->
    (* WX = a+12, WZ = 4a-15 *)
    `|X - W| = a + 12 ->
    `|Z - W| = 4 * a - 15 ->
    (* Conclusion: WX = 21 *)
    `|X - W| = 21.
Proof. Admitted.
####
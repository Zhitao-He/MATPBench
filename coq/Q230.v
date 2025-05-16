####
From mathcomp Require Import all_ssreflect all_algebra.
From mathcomp Require Import reals.

Set Implicit Arguments.
Unset Strict Implicit.
Unset Printing Implicit Defensive.

Local Open Scope ring_scope.

Variable R : realType.

(* The circle in the diagram is centered at (-3,-3), which is the "centre of the figure". *)
Theorem centre_of_figure_is_circle_center :
  exists r : R, forall x y : R,
    ((x + 3)^2 + (y + 3)^2 = r^2) ->
      (x, y) = (-3, -3).
Proof. Admitted.
####
####
From mathcomp Require Import all_ssreflect all_algebra.
From mathcomp Require Import reals geometry classical_sets.

Set Implicit Arguments.
Unset Strict Implicit.
Unset Printing Implicit Defensive.

Local Open Scope ring_scope.

Variable R : realType.

Theorem area_quadrilateral_ABCD_100 :
  forall (A B C D : 'rV[R]_2),
    (* Angles ABC and ADC are right angles *)
    [angle (B - A) (C - B)] = PI/2 ->
    [angle (D - A) (C - D)] = PI/2 ->
    (* AD = DC *)
    (\norm (D - A) = \norm (C - D)) ->
    (* AB + BC = 20 *)
    (\norm (B - A) + \norm (C - B) = 20) ->
    (* The area is 100 *)
    quadrilateral A B C D ->
    area_quadrilateral A B C D = 100.
Proof. Admitted.
####
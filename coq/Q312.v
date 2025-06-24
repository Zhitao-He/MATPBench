####
From mathcomp Require Import all_ssreflect all_algebra.
From mathcomp Require Import reals trigo.

Set Implicit Arguments.
Unset Strict Implicit.
Unset Printing Implicit Defensive.

Local Open Scope ring_scope.

Variable R : realType.

(* Right triangle ABC with right angle at A *)
Definition right_triangle_ABC (A B C : R^2) :=
  [/\ A != B, B != C, C != A &
      orthogonal (A - B) (A - C)].

Theorem tan_C_calculation :
  forall (A B C : R^2),
    right_triangle_ABC A B C ->
    cos_angle A B C = 6%:R / 10%:R ->
    tan_angle C A B = 3%:R / 4%:R.
Proof. Admitted.
####
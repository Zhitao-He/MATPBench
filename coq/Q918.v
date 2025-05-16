####
From mathcomp Require Import all_ssreflect all_algebra.
From mathcomp Require Import reals.

Set Implicit Arguments.
Unset Strict Implicit.
Unset Printing Implicit Defensive.

Local Open Scope ring_scope.

Variable R : realType.

Theorem length_CB_in_triangle_ABC :
  forall (A B C : R^2),
    (* Given: triangle with vertices A, B, C *)
    [/\ norm (C - A) = 9,
        norm (B - A) = 18,
        (* Angle at C is right angle: AC perpendicular to BC *)
        ((C - A) \is_orthogonal (C - B))
     ] ->
    norm (B - C) = 9 * sqrt 3.
Proof. Admitted.
####
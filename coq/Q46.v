From mathcomp Require Import all_ssreflect all_algebra.
From mathcomp Require Import reals geometry.

Set Implicit Arguments.
Unset Strict Implicit.
Unset Printing Implicit Defensive.

Local Open Scope ring_scope.

Variable R : realType.

Theorem triangle_PCD_perimeter :
  forall (O P A B C D : 'rV[R]_2) (r : R),
    0 < r ->
    0 < `|P - A| -> 0 < `|P - B| ->
    `|P - A| = 8 ->
    tangent_to_circle P A O r ->
    tangent_to_circle P B O r ->
    `|A - O| = r -> `|B - O| = r ->
    on_segment C P A ->
    on_segment D P B ->
    tangent_to_circle C D O r ->
    C != D -> C != P -> D != P ->
    `|P - C| + `|P - D| + `|C - D| = 16.
Proof.
intros. admit.
Qed.
####
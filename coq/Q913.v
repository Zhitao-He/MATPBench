####
From mathcomp Require Import all_ssreflect all_algebra.
From mathcomp Require Import reals euclidean_geometry trigo.

Set Implicit Arguments.
Unset Strict Implicit.
Unset Printing Implicit Defensive.

Local Open Scope ring_scope.

Section sine_law_triangle.

Variable R : realType.

Theorem triangle_sine_law_value_x :
  forall (A B C : 'cV[R]_2),
    A <> B -> B <> C -> C <> A ->
    let ab := norm (A - B) in
    let ac := norm (A - C) in
    let bc := norm (B - C) in
    ab = 9 ->
    (* ∠C = 58°, ∠B = 35° *)
    let angleC := 58%:R * PI / 180 in
    let angleB := 35%:R * PI / 180 in
    angleC + angleB < PI ->
    (* by law of sines: ac / sin(angleB) = ab / sin(angleC) *)
    ac = 9 * sin angleB / sin angleC.
Proof.
  (* proof omitted *)
Admitted.

End sine_law_triangle.
####
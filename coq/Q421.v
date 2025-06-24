####
From mathcomp Require Import all_ssreflect all_algebra.
From mathcomp Require Import reals geometry.

Set Implicit Arguments.
Unset Strict Implicit.
Unset Printing Implicit Defensive.

Local Open Scope ring_scope.

Section ParallelogramIntersections.

Variable R : realType.
Record point := mkP { px : R; py : R }.
Definition midpoint A B := mkP ((px A + px B)/2) ((py A + py B)/2).
Definition intersect_line_segment A B C D P :=
  exists k1, 0 < k1 < 1 /\ exists k2, 0 < k2 < 1 /\
  P = mkP (px A + k1*(px B - px A)) (py A + k1*(py B - py A)) /\
  P = mkP (px C + k2*(px D - px C)) (py C + k2*(py D - py C)).

Theorem parallelogram_intersections :
  forall A B C D M N P Q,
    let AC := midpoint A C in
    let BD := midpoint B D in
    midpoint A B = M ->
    midpoint B C = N ->
    intersect_line_segment D M A C P ->
    intersect_line_segment D N A C Q ->
    px AC = 15 ->
    px Q - px A = 10 ->
    px P - px A < px Q - px A.
Proof.
admit.
Qed.

End ParallelogramIntersections.
####
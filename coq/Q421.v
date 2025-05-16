####
From mathcomp Require Import all_ssreflect all_algebra.
From mathcomp Require Import reals geometry.

Set Implicit Arguments.
Unset Strict Implicit.
Unset Printing Implicit Defensive.

Local Open Scope ring_scope.

Section ParallelogramGeometry.

Variable R : realType.
Record point := mkP { px : R; py : R }.
Definition midpoint A B := mkP ((px A + px B)/2) ((py A + py B)/2).
Definition on_line A B P := exists k, P = mkP (px A + k*(px B - px A)) (py A + k*(py B - py A)).
Definition between A P B := exists k, 0 < k < 1 /\P = mkP (px A + k*(px B - px A)) (py A + k*(py B - py A)).
Definition parallelogram A B C D :=
  on_line A B D /\on_line B C A /\on_line C D B /\on_line D A C.

Theorem midpoints_parallelogram_diagonals :
  forall A B C D,
    parallelogram A B C D ->
    midpoint A C = midpoint B D.
Proof.
admit.
Qed.

End ParallelogramGeometry.
####
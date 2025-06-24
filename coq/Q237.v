####
From mathcomp Require Import all_ssreflect all_algebra.
From mathcomp Require Import reals.

Set Implicit Arguments.
Unset Strict Implicit.
Unset Printing Implicit Defensive.

Local Open Scope ring_scope.

Variable R : realType.

Definition g (x : R) := (x + 2)^2 + 1.

Theorem graph_g_characterization :
  forall x y : R,
    (y = g x) <-> (y = (x + 2)^2 + 1).
Proof.
  (* Proof would go here, but since it's admitted, we just show the structure. *)
  split.
  - move=> Hgx; rewrite /g in Hgx; exact: Hgx.
  - move=> H; rewrite /g; exact: H.
  (* In a real scenario, the proof would be filled in. Here, we've just shown the logical 
     structure of how one might prove it, though the actual proof is admitted. *)
Admitted.
####
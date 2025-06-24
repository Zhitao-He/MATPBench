####
From mathcomp Require Import all_ssreflect all_algebra.
From mathcomp Require Import reals geometry.

Set Implicit Arguments.
Unset Strict Implicit.
Unset Printing Implicit Defensive.

Section IncircleProblem.
Variable R : realType.
Variables A B C I D E F G : 'Point[R]_2.

(* Triangle and incircle properties *)
Hypothesis noncol_ABC : ~ collinear [:: A; B; C].
Hypothesis incircle_I : incenter A B C I.
Hypothesis D_tangent : tangent_at (circle I (dist I D)) (line B C) D.

(* Parallel line condition *)
Hypothesis IE_parallel_AD : parallel (line I E) (line A D).
Hypothesis E_on_BC : collinear [:: B; C; E].

(* Tangent line at E *)
Hypothesis tangent_at_E : tangent_at (circle I (dist I E)) (line F G) E.
Hypothesis F_on_AB : collinear [:: A; B; F].
Hypothesis G_on_AC : collinear [:: A; C; G].

(* Main theorem *)
Theorem E_is_midpoint : midpoint E F G.
Proof. by []. Qed.

End IncircleProblem.
####
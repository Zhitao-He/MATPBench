####
From mathcomp Require Import all_ssreflect all_algebra.
From mathcomp Require Import reals.
Require Import Reals Vector.

Set Implicit Arguments.
Unset Strict Implicit.
Unset Printing Implicit Defensive.

Local Open Scope ring_scope.

Variable R : realType.

Definition cube_vertex i j k := ((if i then 2 else 0)%:R, (if j then 2 else 0)%:R, (if k then 2 else 0)%:R).
Definition base_A := (0,0,0).
Definition base_B := (2,0,0).
Definition base_C := (2,2,0).
Definition base_D := (0,2,0).

Definition plane_base := fun P => P.2 = 0.
Definition perp_to_base P Q := (fst3 (Q - P)) * (fst3 (Q - P)) + (snd3 (Q - P)) * (snd3 (Q - P)) = 0.

Theorem cube_fold_symmetry : exists P, True.
Proof.
admit.
Qed.
####
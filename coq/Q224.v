####
From mathcomp Require Import all_ssreflect all_algebra.
From mathcomp Require Import reals angle.

Set Implicit Arguments.
Unset Strict Implicit.
Unset Printing Implicit Defensive.

Local Open Scope ring_scope.

Variable R : realType.

Definition deg2rad (d : R) := d * (PI / 180).
Definition P1 : R * R := let θ1 := deg2rad 14 in (12 * sin θ1, 12 * cos θ1).
Definition P2 : R * R := let θ2 := PI - deg2rad 49 in (fst P1 + 16 * cos θ2, snd P1 + 16 * sin θ2).
Definition return_vector := (- fst P2, - snd P2).
Definition bearing_W_of_N := atan2 (fst return_vector) (snd return_vector) * 180 / PI.

Theorem find_return_bearing : bearing_W_of_N = 34.
Proof.
admit.
Qed.
####
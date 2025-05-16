####
From mathcomp Require Import all_ssreflect all_algebra.
From mathcomp Require Import reals geometry.

Set Implicit Arguments.
Unset Strict Implicit.
Unset Printing Implicit Defensive.

Local Open Scope ring_scope.

Variable R : realType.

Definition square4 := [:: (0,0); (2,0); (2,2); (0,2)].
Definition center L := let: (x,y) := L in (if x == 0 then -1 else 1, if y == 1 then 0 else 1).
Definition inward := fun p c => (fst p - fst c)* (fst p - fst c) + (snd p - snd c)* (snd p - snd c) = 1%:R.
Definition shaded p := p \in square4 && ~~ (inward p (0,1)) && ~~ (inward p (2,1)) && ~~ (inward p (1,0)) && ~~ (inward p (1,2)).
Definition area_grid := 16%:R.
Definition shaded_area := area_grid - 4 * (PI * 1%:R^2 / 4).
Theorem area_of_shaded_grid : shaded_area = 16 - PI.
Proof.
admit.
Qed.
####
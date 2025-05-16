####
From mathcomp Require Import all_ssreflect all_algebra.
From mathcomp Require Import reals geometry.

Set Implicit Arguments.
Unset Strict Implicit.
Unset Printing Implicit Defensive.

Local Open Scope ring_scope.

Variable R : realType.

Record point := mkPoint { px : R; py : R }.

Definition dist (A B : point) : R :=
  Num.sqrt ((A.(px) - B.(px))^+2 + (A.(py) - B.(py))^+2).

Variables A B C D : point.

Hypotheses
  (HBC : dist B C = 15)
  (HCD : dist C D = 15)
  (HAC : exists x : R, dist A C = 3 * x + 5)
  (HAB : exists x : R, dist A B = 5 * x - 11)
  (Hright : let v1 := ((C.(px) - B.(px)), (C.(py) - B.(py))) in
            let v2 := ((D.(px) - C.(px)), (D.(py) - C.(py))) in
            (v1.1 * v2.1 + v1.2 * v2.2 = 0)).

Theorem length_of_line_AB :
  dist A B = 29.
Proof. Admitted.
####
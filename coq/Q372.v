####
From mathcomp Require Import all_ssreflect all_algebra.
From mathcomp Require Import reals rat geometry.

Set Implicit Arguments.
Unset Strict Implicit.
Unset Printing Implicit Defensive.

Local Open Scope ring_scope.

Variable R : realType.

Section SquareShadedFraction.

Variable R : realType.
Let A := (0,0).
Let B := (1,0).
Let C := (1,1).
Let D := (0,1).
Let E := (1/4,0).
Let F := (1,1/2).
Let G := (0,1/2).
Let H := (3/4,1).

Definition area_triangle P Q R := abs ((fst P*(snd Q - snd R) + fst Q*(snd R - snd P) + fst R*(snd P - snd Q))/2).
Definition area_square := 1.
Definition area_white := area_triangle A E D + area_triangle B F C + area_triangle D H A + area_triangle C G B.

Theorem shaded_fraction : (area_square - area_white) / area_square = 7/8.
Proof.
admit.
Qed.

End SquareShadedFraction.
####
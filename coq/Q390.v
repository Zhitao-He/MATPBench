####
From mathcomp Require Import all_ssreflect all_algebra.
From mathcomp Require Import reals geometry.

Set Implicit Arguments.
Unset Strict Implicit.
Unset Printing Implicit Defensive.

Local Open Scope ring_scope.

Section Area_Ratio_ACE_ABDE.

Variable R : realType.
Definition area_triangle P Q R := abs ((fst P*(snd Q - snd R) + fst Q*(snd R - snd P) + fst R*(snd P - snd Q))/2).
Definition area_rectangle P Q R S := abs (fst Q - fst P) * abs (snd S - snd P).
Let A := (1,1).
Let C := (3,3).
Let E := (4,1).
Let B := (1,3).
Let D := (4,3).

Theorem area_ratio_ACE_ABDE :
  area_triangle A C E / area_rectangle A B D E = 1/6.
Proof.
admit.
Qed.

End Area_Ratio_ACE_ABDE.
####
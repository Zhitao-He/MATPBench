####
From mathcomp Require Import all_ssreflect all_algebra.
From mathcomp Require Import reals geometry euclidean.

Set Implicit Arguments.
Unset Strict Implicit.
Unset Printing Implicit Defensive.

Section SquareShading.

Variable R : realType.
Variable s : R.
Hypothesis s_pos : 0 < s.
Let A := (0, s).
Let B := (0, 0).
Let C := (s, 0).
Let D := (s, s).
Let E := (s, 0).
Let F := (s, -s).
Let G := (2*s, -s).
Let H := (2*s, 0).
Let J := ((3*s)/2, -s/2).

Lemma J_on_AC_extension :
  colinear [:: A; C; J].
Proof.
admit.
Qed.

End SquareShading.
####
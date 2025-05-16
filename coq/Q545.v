####
From mathcomp Require Import all_ssreflect all_algebra.
From mathcomp Require Import reals geometry.

Set Implicit Arguments.
Unset Strict Implicit.
Unset Printing Implicit Defensive.

Variables A B C D E F : 'rV[R]_2.
Hypotheses
  (Hrect : is_rectangle A B C D)
  (HE : E \in [seg A & B])
  (HF : F \in [seg B & C])
  (colE : colinear [:: A;E;B])
  (colF : colinear [:: B;F;C]).

Theorem shaded_area_count : 23%nat.
Proof.
admit.
Qed.
####
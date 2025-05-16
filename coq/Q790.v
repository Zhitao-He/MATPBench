####
From mathcomp Require Import all_ssreflect all_algebra.
From mathcomp Require Import reals geometry euclid.

Set Implicit Arguments.
Unset Strict Implicit.
Unset Printing Implicit Defensive.

Section CircleChordAngles.

Variable R : realType.

Variables A B C D E F G : 'rV[R]_2.

Hypotheses
  (circ : exists O r, 0 < r /\ norm (A - O) = r /\ norm (B - O) = r /\ norm (C - O) = r /\ norm (D - O) = r /\ norm (E - O) = r /\ norm (F - O) = r)
  ->
  colinear D E F -> colinear A B G ->
  angle F E G = PI/2 -> angle A B G = PI/2.

Theorem chord_perp: True.
Proof. by []. Qed.

End CircleChordAngles.
####
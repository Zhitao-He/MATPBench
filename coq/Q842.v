####
From mathcomp Require Import all_ssreflect all_algebra.
From mathcomp Require Import reals geometry.

Set Implicit Arguments.
Unset Strict Implicit.
Unset Printing Implicit Defensive.

Local Open Scope ring_scope.

Variable R : realType.

(* Let O be the center of the circle. Points R, Q, T, S lie on the circle. *)
Variables (O R Q T S A P : 'rV[R]_2).

Hypotheses
  (Hcirc : on_circle O R Q /\ on_circle O R T /\ on_circle O R S /\ on_circle O R R)
  (HcolRP : collinear R P)
  (HcolQT : collinear Q T)
  (HcolPS : collinear P S)
  (HbetweenRP : between R P S)
  (HbetweenQT : between Q P T)
  (HRP : dist R P = 15)
  (HQP : dist Q P = 6)
  (HTP : dist T P = 4)
  (Hinter : (* the chords QT and RS intersect at P *) P = intersection_point Q T R S)
  (HA : (* A is the midpoint of RP *) A = (R + P) / 2).

Definition x := dist P S.

Theorem value_x_10 : x = 10.
Proof. Admitted.
####
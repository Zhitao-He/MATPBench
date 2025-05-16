####
From mathcomp Require Import all_ssreflect all_algebra.
From mathcomp Require Import reals geometry.

Set Implicit Arguments.
Unset Strict Implicit.
Unset Printing Implicit Defensive.

Local Open Scope ring_scope.

Variable R : realType.

(* Points of the quadrilateral *)
Variables P Q R S T : 'rV[R]_2.

(* T is the intersection of diagonals QS and RP *)
Hypothesis T_on_QS : colinear Q T S.
Hypothesis T_on_RP : colinear R T P.
Hypothesis T_between_QS : [&& (Q != S), between Q T S & between R T P].

(* Segment lengths, notation: seg_length X Y = distance between X and Y *)
Definition seg_length (A B : 'rV[R]_2) := sqrt ((A - B) *m (A - B)^T).

Variables x y : R.

(* Diagram relations as given by the image *)
Hypothesis length_RT : seg_length R T = x.
Hypothesis length_TS : seg_length T S = 2*y + 12.
Hypothesis length_QT : seg_length Q T = 5*y.
Hypothesis length_TP : seg_length T P = 5*x - 28.

Theorem value_of_x :
  x = 7.
Proof. Admitted.
####
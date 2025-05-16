####
From mathcomp Require Import all_ssreflect all_algebra.
From mathcomp Require Import reals geometry angle.

Set Implicit Arguments.
Unset Strict Implicit.
Unset Printing Implicit Defensive.

Section GeometryTheorem.

Variable R : realType.

Variables H N J : 'Point[R]_2.

(* Assume collinearity and relevant configuration from the diagram, e.g., points H, N, J are distinct and collinear as required. *)
Hypothesis H_neq_N : H <> N.
Hypothesis N_neq_J : N <> J.
Hypothesis col_HNJ : colinear H N J.

(* The angle HNJ is defined as the angle at point N formed by points H, N, and J. *)
Definition angle_HNJ := angle H N J.

(* Given: measure of angle HNJ equals 79 degrees. *)
Theorem measure_angle_HNJ :
  angle_HNJ = 79%:R.
Proof. Admitted.

End GeometryTheorem.
####
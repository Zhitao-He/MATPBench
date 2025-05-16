####
From mathcomp Require Import all_ssreflect all_algebra.
From mathcomp Require Import reals geometry.

Set Implicit Arguments.
Unset Strict Implicit.
Unset Printing Implicit Defensive.

Local Open Scope ring_scope.

Variable R : realType.

(* Two rays r1 and r2 with common endpoint O *)
Variables O : 'rV[R]_2.
Variables u1 u2 : 'rV[R]_2.
Hypothesis u1_nonzero : u1 != 0.
Hypothesis u2_nonzero : u2 != 0.
Hypothesis u1_u2_angle : (exists theta : R, 0 < theta < PI / 2 /\ '[u1, u2] = norm u1 * norm u2 * cos theta).

Definition ray1 := fun t : R => O + t *: u1.
Definition ray2 := fun t : R => O + t *: u2.

(* Three squares Q1, Q2, Q3 arranged as in the diagram:
   - Each square has one side lying on r1,
   - Two adjacent vertices touching r2,
   - Squares are arranged without overlap, ordered along r1,
   - The smallest two squares have side lengths 20 and 22.
*)
Record square (A : 'rV[R]_2) (s : R) := {
  v1 : 'rV[R]_2; (* point on r1: base left *)
  v2 : '
####
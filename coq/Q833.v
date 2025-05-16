####
From mathcomp Require Import all_ssreflect all_algebra.
From mathcomp Require Import reals normedtype trigo.

Set Implicit Arguments.
Unset Strict Implicit.
Unset Printing Implicit Defensive.

Local Open Scope ring_scope.

Variable R : realType.

(* Points A, B, C in the plane *)
Variables (A B C : 'rV[R]_2).

Hypotheses
  (h_ABC_right : angle B C A = PI./2)
  (h_AB : `|A - B| = 26)
  (h_AC : `|A - C| = 24)
  (h_BC : `|B - C| = 10).

Theorem triangle_tan_ABC :
  tan (angle A B C) = 12 / 5.
Proof. Admitted.
####
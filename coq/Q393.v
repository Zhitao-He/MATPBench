####
From mathcomp Require Import all_ssreflect all_algebra.
From mathcomp Require Import reals geometry.

Set Implicit Arguments.
Unset Strict Implicit.
Unset Printing Implicit Defensive.

Local Open Scope ring_scope.

Variable R : realType.

Variables (A B C D : 'rV[R]_2).

Hypotheses
  (HAC : `|A - C| = 13)
  (HDC : `|D - C| = 2)
  (right_B : angle B C A = pi/2)
  (right_D : angle D C B = pi/2)
  (right_DC : angle D C B = pi/2)
  (right_DA : angle D A C = pi/2).

Theorem length_BD_sqrt22 :
  `|B - D| = sqrt 22.
Proof. Admitted.
####
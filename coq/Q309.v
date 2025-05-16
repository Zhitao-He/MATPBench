####
From mathcomp Require Import all_ssreflect all_algebra.
From mathcomp Require Import reals geometry.

Set Implicit Arguments.
Unset Strict Implicit.
Unset Printing Implicit Defensive.

Local Open Scope ring_scope.

Variable R : realType.
Variables A B C D E F G : 'rV[R]_2.

Hypotheses
  ABC_isosceles_right : [/\B 0 0 = 0, B 0 1 = 0 & C 0 1 = 0] /\norm (B - C) = norm (A - B) /\norm (C - A)^+2 = norm (A - B)^+2 + norm (B - C)^+2.
Hypotheses
  DEF_isosceles_right : [/\E 0 0 = 0, E 0 1 = 0 & F 0 1 = 0] /\norm (E - F) = norm (D - E) /\norm (F - D)^+2 = norm (E - F)^+2 + norm (F - D)^+2.

Theorem areas_equal : area_triangle A B C = area_triangle D E F.
Proof.
admit.
Qed.
####
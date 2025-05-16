####
From mathcomp Require Import all_ssreflect all_algebra.
From mathcomp Require Import reals.

Set Implicit Arguments.
Unset Strict Implicit.
Unset Printing Implicit Defensive.

Local Open Scope ring_scope.

Variable R : realType.

Theorem angle_complementary_find_measure
  (m6 m7 m8 : R)
  (Hcomp : m6 + m8 = 90)
  (Hm8 : m8 = 47)
  (Hsum : m6 + m7 + m8 = 180) :
  m7 = 90.
Proof. Admitted.
####
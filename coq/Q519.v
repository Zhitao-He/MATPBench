####
From mathcomp Require Import all_ssreflect all_algebra.
From mathcomp Require Import reals geometry trigo.

Set Implicit Arguments.
Unset Strict Implicit.
Unset Printing Implicit Defensive.

Local Open Scope ring_scope.

Variable R : realType.

Let K J L : 'I_3.
Let circle : seq (R * R).

Hypothesis circle_K_center : circle = [:: (0,0)].
Hypothesis K_on_circle : K = 0%:R.
Hypothesis J_on_circle : normr (J.1, J.2) = 11.
Hypothesis L_on_circle : normr (L.1, L.2) = 11.
Hypothesis K_center : K = (0,0).
Hypothesis angle_JKL : angle J K L = (65%:R * pi) / 180.
Hypothesis sector_JKL : K # J # L are points on the circle.

Definition sector_area (O A B : R * R) (r theta : R) :=
  (theta / (2 * pi)) * (pi * r ^+ 2).

Theorem area_of_sector_KJL :
  sector_area (0,0) J L 11 ((65%:R * pi) / 180) = 7139 * pi / 72.
Proof. Admitted.
####
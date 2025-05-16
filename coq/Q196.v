####
From mathcomp Require Import all_ssreflect all_algebra.
From mathcomp Require Import reals geometry angle.

Set Implicit Arguments.
Unset Strict Implicit.
Unset Printing Implicit Defensive.

Section InscribedPentagon.

Variable R : realType.

Variables (O A B C D E : 'rV[R]_2).

Hypotheses
  (circular : circle O A)
  (on_circle_B : on_circle O A B)
  (on_circle_C : on_circle O A C)
  (on_circle_D : on_circle O A D)
  (on_circle_E : on_circle O A E)
  (distinct : uniq [:: A; B; C; D; E])
  (pentagon_order : convex_poly [:: A; B; C; D; E])
  (angle_ADE : angle D A E = (30%:R * (PI / 180)))
  (angle_EDA : angle E D A = (115%:R * (PI / 180))).

Theorem pentagon_angle_B :
  angle A B C = (100%:R * (PI / 180)).
Proof. Admitted.

End InscribedPentagon.
####
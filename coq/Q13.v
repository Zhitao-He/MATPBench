####
From mathcomp Require Import all_ssreflect all_algebra.
From mathcomp Require Import reals geometry euclidean_geometry.

Set Implicit Arguments.
Unset Strict Implicit.
Unset Printing Implicit Defensive.

Section GeometryTheorem.

Variable R : realType.

Variables A B C E F O : 'rV[R]_2.

Hypotheses
  (circleO : is_circle O (norm (A - O)))
  (on_circle_A : on_circle O (norm (A - O)) A)
  (on_circle_B : on_circle O (norm (A - O)) B)
  (on_circle_E : on_circle O (norm (A - O)) E)
  (on_circle_F : on_circle O (norm (A - O)) F)
  (diam_AB : 2 * norm (A - O) = norm (A - B))
  (E_mid_FEB : midpoint E F B E)
  (chord_EF : F <> E)
  (chord_EB : E <> B)
  (intersection_C : (on_line C E F) /\ (on_line C A B))
  (O_neq_F : O <> F)
  (angle_AOF_40 : angle_deg A O F = 40).

Theorem circle_angle_F_35 :
  angle_deg E F B = 35.
Proof. Admitted.

End GeometryTheorem.
####
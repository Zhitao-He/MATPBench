####
From mathcomp Require Import all_ssreflect all_algebra.
From mathcomp Require Import reals geometry.

Set Implicit Arguments.
Unset Strict Implicit.
Unset Printing Implicit Defensive.

Local Open Scope ring_scope.

Section Sector_Radius.

Variable R : realType.

Variables O P Q : 'rV[R]_2.

Hypothesis h_radius : dist O P = 4%:R /\ dist O Q = 4%:R.
Hypothesis h_angle : angle P O Q = theta.

Definition sector_area := (1/2) * (dist O P)^2 * theta.

Theorem sector_radius_is_4 :
  exists theta : R,
    sector_area = (1/2) * (4%:R)^2 * theta.
Proof. Admitted.

End Sector_Radius.
####
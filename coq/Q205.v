####
From mathcomp Require Import all_algebra all_ssreflect.
From mathcomp Require Import reals.

Set Implicit Arguments.
Unset Strict Implicit.
Unset Printing Implicit Defensive.

Local Open Scope ring_scope.

Section Sector_Area.

Variable R : realType.

Variables O P Q : 'rV[R]_2.

Hypothesis h_radius : dist O P = 24%:R /\ dist O Q = 24%:R.
Hypothesis h_angle : angle P O Q = theta.

Definition sector_area := (1/2) * (dist O P)^2 * theta.

Theorem sector_area_240pi :
  exists theta : R,
    0 < theta < 2 * PI /\
    sector_area = (240 * PI)%:R.
Proof. Admitted.

End Sector_Area.
####
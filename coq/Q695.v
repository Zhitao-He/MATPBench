####
From mathcomp Require Import all_ssreflect all_algebra.
From mathcomp Require Import reals sequences geometry.
From mathcomp Require Import trigo.

Set Implicit Arguments.
Unset Strict Implicit.
Unset Printing Implicit Defensive.

Local Open Scope ring_scope.

Variable R : realType.

(* Points K, L, J; Circle centered at K with radius 10; angle JKL = 85 degrees; Sector KLJ refers to the sector at center K between KJ and KL *)

Let pi := Num.real_pi.

Variable K L J : 'gV(R)_2.

Hypotheses
  (h_circle : norm (L - K) = 10 /\ norm (J - K) = 10)
  (h_angle : [angle J - K, L - K] = (85%:R * pi) / 180).

Definition area_of_sector (center pt1 pt2 : 'gV(R)_2) (r a : R) :=
  r^2 * a / 2.

Theorem area_sector_KLJ :
  area_of_sector K J L 10 ((85%:R * pi) / 180) = (1375 * pi) / 18.
Proof. Admitted.
####
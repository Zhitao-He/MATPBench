####
From mathcomp Require Import all_ssreflect all_algebra.
From mathcomp Require Import reals geometry.

Set Implicit Arguments.
Unset Strict Implicit.
Unset Printing Implicit Defensive.

Section CircleSectorProblem.
Variable R : realType.
Variables L K M : 'Point[R]_2.

Hypotheses
  ML_length : dist M L = 7;
  angle_MLK : angle_deg (M,L,K) = 92;
  circle_center_L : forall P, (P = K \/ P = M) -> dist L P = dist L M.

Definition sector_area := (92%:R * pi / 180%:R) * (7%:R)^2 / 2.

Theorem sector_area_value : sector_area = (1127%:R * pi) / 90%:R.
Proof. by []. Qed.

End CircleSectorProblem.
####
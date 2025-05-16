####
From mathcomp Require Import all_ssreflect all_algebra.
From mathcomp Require Import reals geometry.

Set Implicit Arguments.
Unset Strict Implicit.
Unset Printing Implicit Defensive.

Local Open Scope ring_scope.

Section PerpendicularBisectorsTriangle.

Variable R : realType.

Variables P Q R_pt T : 'rV[R]_2.
Variables x y : R.
Definition z := 3%:R.
Variables l m n : {line R^o_2}.

Hypotheses
  Hl : is_perpendicular_bisector l P Q R_pt /\l \contains T /
  Hm : is_perpendicular_bisector m Q R_pt P /\m \contains T /
  Hn : is_perpendicular_bisector n R_pt P Q /\n \contains T /
  HTQ : `|T - Q| = 2 * x /
  HPT : `|P - T| = 3 * y - 1 /
  HTR : `|T - R_pt| = 8 /
  HPR : `|P - R_pt| = 7 /
  HPQ : `|P - Q| = z + 4.

Theorem circumcenter_distance_relation :
  4 * x + 3 * y = 8.
Proof.
admit.
Qed.

End PerpendicularBisectorsTriangle.
####
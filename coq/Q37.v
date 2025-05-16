####
From mathcomp Require Import all_algebra all_ssreflect.
From mathcomp Require Import reals geometry angle.

Set Implicit Arguments.
Unset Strict Implicit.
Unset Printing Implicit Defensive.

Section Geometry_Theorem.

Variable R : realType.

(* Points: A (apex), B, D, E, C collinear in that order *)
Variables (A B D E C : 'rV[R]_2).

Hypothesis collinear_BDEC : collinear R [:: B; D; E; C].

(* Triangle ABD is congruent to triangle ACE *)
Hypothesis cong_ABD_ACE : congruent R [:: A; B; D] [:: A; C; E].

(* Angle AEC is 110 degrees *)
Hypothesis angle_AEC_110 : angle R A E C = 110%:R.

Theorem geometry_angle_DAE_40 :
  angle R D A E = 40%:R.
Proof. Admitted.

End Geometry_Theorem.
####
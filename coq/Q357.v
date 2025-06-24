####
From mathcomp Require Import all_ssreflect all_algebra.
From mathcomp Require Import reals anglearc geometry.

Set Implicit Arguments.
Unset Strict Implicit.
Unset Printing Implicit Defensive.

Local Open Scope ring_scope.

Section CircleDiametersAngles.

Variable R : realType.

Variables A B C D O : 'rV[R]_2.

Hypothesis HO_center : is_center O (circle O (norm (A - O))).
Hypothesis HAC_diameter : diameter (circle O (norm (A - O))) A C.
Hypothesis HBD_diameter : diameter (circle O (norm (A - O))) B D.

Hypothesis angle_AOD_54 :
  angle_deg A O D = 54.

Theorem angle_AOB_126 :
  angle_deg A O B = 126.
Proof. Admitted.

End CircleDiametersAngles.
####
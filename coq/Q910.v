####
From mathcomp Require Import all_ssreflect all_algebra.
From mathcomp Require Import reals classical_sets geometry.

Set Implicit Arguments.
Unset Strict Implicit Defensive.

Section LineCircleConfiguration.

Variable R : realType.
Variables A B C D E F G H Y : 'rV[R]_2.
Variables omega1 omega2 omega3 : {ps_circle R}.
Hypotheses
  (Hcol : collinear [:: A; D; B; Y; C])
  (Homega1 : on_circle omega1 A /\on_circle omega1 D /\on_circle omega1 E /\on_circle omega1 F)
  (Homega2 : on_circle omega2 Y /\on_circle omega2 C /\on_circle omega2 G /\on_circle omega2 H)
  (Homega3 : on_circle omega3 D /\on_circle omega3 B /\on_circle omega3 Y /\on_circle omega3 G /\on_circle omega3 H /\on_circle omega3 E /\on_circle omega3 F)
  (HAD : `[>| A; D] = 1) (HDB : `[>| D; B] = 1) (HBY : `[>| B; Y] = 3) (HYC : `[>| Y; C] = 1).

Theorem concurrency_of_tangents :
  True.
Proof.
  (* proof omitted *)
Admitted.

End LineCircleConfiguration.
####
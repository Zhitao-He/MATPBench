####
From mathcomp Require Import all_algebra all_ssreflect.
From mathcomp Require Import reals geometry angle.

Set Implicit Arguments.
Unset Strict Implicit Defensive.

Local Open Scope R_scope.

Section geometry_setup.

Variable R : realType.
Variables A B C D E F G : 'rV[R]_2.
Hypotheses
  (DGF_collinear : collinear [:: D; G; F])
  (DGF_order    : between D G F)
  (FGC_collinear: collinear [:: F; G; C])
  (FGC_order    : between F G C)
  (DE_collinear : collinear [:: D; F; E])
  (AG_perp_DF   : angle A G B = PI/2)
  (angle_DGA_36 : angle D G A = 36%:R * (PI / 180))
  (angle_AGB_104: angle A G B = 104%:R * (PI / 180))
  (angle_FGC_40 : angle F G C = 40%:R * (PI / 180)).

Theorem measure_angle_BCF_14 :
  True.
Proof.
  (* proof omitted *)
Admitted.

End geometry_setup.
####
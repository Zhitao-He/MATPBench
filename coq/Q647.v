####
From mathcomp Require Import all_ssreflect all_algebra.
From mathcomp Require Import reals geometry angle.

Set Implicit Arguments.
Unset Strict Implicit.
Unset Printing Implicit Defensive.

Section CircleArcTheorem.

Variable R : realType.

Variables O A B C D E : R^2.

Hypotheses
  (hcirc : circle O B) (* Circle centered at O passing through B *)
  (H_on : forall P, P \in [::B;C;D;E] -> on_circle O B P)
  (A_on_seg_CE : between C A E)
  (A_neq_O : A <> O)
  (C_neq_E : C <> E)
  (arcAEC : measure_minor_arc O A E C = 180)
  (angle_DAE : angle_deg D A E = 42).

Theorem circle_arc_AEC_measure :
  measure_minor_arc O A E C = 180.
Proof. Admitted.

End CircleArcTheorem.
####
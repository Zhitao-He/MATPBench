####
From mathcomp Require Import all_ssreflect all_algebra.
From mathcomp Require Import reals geometry.

Set Implicit Arguments.
Unset Strict Implicit.
Unset Printing Implicit Defensive.

Section Inscribed_Quadrilateral_Theorem.

Variable R : realType.

Variables A B C D Z : 'rV[R]_2.

Hypothesis Hcyclic : on_circle Z A /\ on_circle Z B /\ on_circle Z C /\ on_circle Z D.
Hypothesis Hab_dc_parallel : colinear (B - A) (C - D).

(* m∠BZA = 104°, angle at Z between points B, Z, A *)
Hypothesis angle_BZA_104 : angle_rad B Z A = 104%:R * (PI / 180).
(* m∠C B = 94°, interpreted as arc BC = 94° on the circle *)
Hypothesis arc_CB_94 : subtended_arc_degree Z B C = 94%:R.

Theorem inscribed_quadrilateral_angle_ADC :
  subtended_arc_degree Z A D C = 162%:R.
Proof. Admitted.

End Inscribed_Quadrilateral_Theorem.
####
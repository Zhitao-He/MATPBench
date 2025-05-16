####
From mathcomp Require Import all_ssreflect all_algebra.
From mathcomp Require Import reals euclidean_geometry.

Set Implicit Arguments.
Unset Strict Implicit.
Unset Printing Implicit Defensive.

Section Geometry_Theorem.

Variable R : realType.

(* Points *)
Variables A B C D O : 'euclid_2D R.

Hypotheses
  (circO : circle O A)
  (on_circ_B : on_circle O A B)
  (on_circ_C : on_circle O A C)
  (on_circ_D : on_circle O A D)
  (A_neq_B : A != B)
  (A_neq_C : A != C)
  (A_neq_D : A != D)
  (B_neq_C : B != C)
  (B_neq_D : B != D)
  (C_neq_D : C != D)
  (diam_AB : [segment A; B] = diameter O A)
  (A_in_triangle : ~ colinear A B C)
  (angle_ACD_40 : angle C A D = 40%:R)
.

Theorem inscribed_angle_BAD_50 :
  angle B A D = 50%:R.
Proof. Admitted.

End Geometry_Theorem.
####
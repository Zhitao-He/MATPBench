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
  (circO : circle O A)  (* O is the center of the circle passing through A *)
  (on_circ_B : on_circle O A B)  (* B lies on the circle centered at O passing through A *)
  (on_circ_C : on_circle O A C)  (* C lies on the circle centered at O passing through A *)
  (on_circ_D : on_circle O A D)  (* D lies on the circle centered at O passing through A *)
  (A_neq_B : A != B)
  (A_neq_C : A != C)
  (A_neq_D : A != D)
  (B_neq_C : B != C)
  (B_neq_D : B != D)
  (C_neq_D : C != D)
  (diam_AB : [segment A; B] = diameter O)  (* AB is the diameter of the circle centered at O *)
  (A_in_triangle : ~ colinear A B C)  (* A, B, C are not collinear, forming a triangle *)
  (angle_ACD_40 : angle D C A = 40%:R)  (* Angle ACD is 40 degrees (note the correction in angle specification) *)
.

Theorem inscribed_angle_BAD_50 :
  angle B A D = 50%:R.
Proof. Admitted.

End Geometry_Theorem.
####
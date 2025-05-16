####
From mathcomp Require Import all_ssreflect all_algebra.
From mathcomp Require Import reals geometry angle.

Set Implicit Arguments.
Unset Strict Implicit.
Unset Printing Implicit Defensive.

Section TriangleAHDIsosceles.

Variable R : realType.

(* Points in the plane *)
Variables A B C O E F H D : 'rV[R]_2.

Hypotheses
  (H_circum : circle O A B /\ circle O A C /\ circle O B C)
  (H_angle : angle B A C = pi/3)
  (H_E_on : foot_point E A [line B C])
  (H_F_on : foot_point F C [line A B])
  (H_orth1 : perpendicular [line A E] [line B C])
  (H_orth2 : perpendicular [line C F] [line A B])
  (H_H_int : collinear3 H A E /\ collinear3 H C F)
  (H_D_arc : on_circle O D /\ midpoint_arc O D B C A)
.

Theorem triangle_AHD_isosceles :
  is_isosceles_triangle A H D.
Proof. Admitted.

End TriangleAHDIsosceles.
####
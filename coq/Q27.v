####
From mathcomp Require Import all_ssreflect all_algebra.
From mathcomp Require Import reals geometry euclidean_geometry.

Set Implicit Arguments.
Unset Strict Implicit.
Unset Printing Implicit Defensive.

Section Circumcircle_Quadrilateral_Angle.

Variable R : realType.

(* Points A, B, C, D on the circle centered at O *)
Variables (A B C D O : 'vec[R]_2).

Hypothesis circle_O : on_circle O A /\ on_circle O B /\ on_circle O C /\ on_circle O D.
Hypothesis distinct_pts : A <> B /\ B <> C /\ C <> D /\ D <> A /\ A <> C /\ B <> D.

(* O is the center; O is inside ABCD *)
Hypothesis convex_ABCD : convex_quad A B C D.

(* ∠AOB = 110 degrees *)
Hypothesis angle_AOB_110 : angle A O B = 110%:R.

Theorem circumcircle_quadrilateral_angle_C :
  angle B C D = 125%:R.
Proof. Admitted.

End Circumcircle_Quadrilateral_Angle.
####
####
From mathcomp Require Import all_ssreflect all_algebra.
From mathcomp Require Import reals angles euclidean_geometry.

Set Implicit Arguments.
Unset Strict Implicit.
Unset Printing Implicit Defensive.

Section angle_acb_66.

Variable R : realType.

Variables A B C D P : 'rV[R]_2.

Hypothesis AB_eq_15 : dist A B = 15.
Hypothesis BC_eq_12 : dist B C = 12.
Hypothesis angle_ABP_eq_24 : angle_at B A P = (24%:R / 180%:R) * PI.
Hypothesis points_distinct : [/\ A != B, B != C, C != D, D != A, A != C, B != D, A != D, C != P, B != P, D != P, A != P].
Hypothesis quadrilateral_convex : is_convex_quad A B C D.
Hypothesis P_inside_ABC : in_interior_convex_quad P A B C D.

Theorem measure_angle_ACB_66 :
  angle_at C A B = (66%:R / 180%:R) * PI.
Proof. Admitted.

End angle_acb_66.
####
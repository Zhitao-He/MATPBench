####
From mathcomp Require Import all_ssreflect all_algebra.
From mathcomp Require Import reals geometry trigo.

Set Implicit Arguments.
Unset Strict Implicit.
Unset Printing Implicit Defensive.

Local Open Scope ring_scope.

Section Circle_Intersection.

Variable R : realType.

Variables A B C D P : 'rV[R]_2.
Variable r : R.

Hypothesis h_circle_center : (C + D) / 2%:R = O.
Hypothesis h_diameter_CD : normr (D - C) = 2%:R * r.
Hypothesis h_on_circle_C : normr (C - O) = r.
Hypothesis h_on_circle_D : normr (D - O) = r.
Hypothesis h_colinear_AD : colinear A D P.
Hypothesis h_intersect_P : on_circle P O r.
Hypothesis h_AB_length : normr (B - A) = 2%:R * sqrt 13.

Theorem length_AB : normr (B - A) = 2%:R * sqrt 13.
Proof. Admitted.

End Circle_Intersection.
####
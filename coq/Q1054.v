####
From mathcomp Require Import all_ssreflect all_algebra.
From mathcomp Require Import reals geometry.

Set Implicit Arguments.
Unset Strict Implicit.
Unset Printing Implicit Defensive.

Section Rectangle_Circle_Angle.

Variable R : realType.

Variables A B C D O K : 'rV[R]_2.

(* Rectangle ABCD is inscribed in circle O *)
Hypothesis rect_ABCD : rectangle A B C D.
Hypothesis cyclic_ABCD : on_circle O A /\ on_circle O B /\ on_circle O C /\ on_circle O D.

(* Point K lies inside the rectangle ABCD *)
Hypothesis K_in_rect : in_interior_rect K A B C D.

(* Define E as intersection of BK with CD *)
Definition E : 'rV[R]_2 := inter_pt (line_through B K) (line_through C D).
Hypothesis E_on_CD : on_line E (line_through C D).
Hypothesis E_on_BK : on_line E (line_through B K).

(* Define F as intersection of DK with BC *)
Definition F : 'rV[R]_2 := inter_pt (line_through D K) (line_through B C).
Hypothesis F_on_BC : on_line F (line_through B C).
Hypothesis F_on_DK : on_line F (line_through D K).

(* Define L as the second intersection of AK with the circle O *)
Definition L : 'rV[R]_2 := second_inter_circle_line O A K.
Hypothesis L_on_circle : on_circle O L.
Hypothesis L_neq_A : L != A.
Hypothesis L_on_AK : colinear A K L.

(* Prove that angle FLE is 90 degrees *)
Theorem rectangle_circumcircle_right_angle :
  angle F L E = pi/2.
Proof. Admitted.

End Rectangle_Circle_Angle.
####
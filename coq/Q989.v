####
From mathcomp Require Import all_ssreflect all_algebra.
From mathcomp Require Import reals euclidean geometry.

Set Implicit Arguments.
Unset Strict Implicit.
Unset Printing Implicit Defensive.

Section Geometry_Theorem.

Variable R : realType.

Variables A B C O D E F H G : 'cV[R]_2.

Hypothesis h_circumcircle : on_circle O A /\ on_circle O B /\ on_circle O C.

Hypothesis h_AD_bisects : angle_bisector A D B C.

Hypothesis h_D_on_circle : on_circle O D.
Hypothesis h_D_on_ray_AD : colinear A D O.

Hypothesis h_OE_parallel_BD : parallel (O,E) (B,D).
Hypothesis h_E_on_AB : on_line E (A, B).

Hypothesis h_OF_parallel_CD : parallel (O,F) (C,D).
Hypothesis h_F_on_AC : on_line F (A, C).

Hypothesis h_H_orthocenter : orthocenter H A B C.

Hypothesis h_HG_parallel_AD : parallel (H,G) (A,D).
Hypothesis h_G_on_BC : on_line G (B, C).

Theorem geometry_BE_GE_GF_CF_eq :
    dist B E = dist G E /\
    dist G E = dist G F /\
    dist G F = dist C F.
Proof. Admitted.

End Geometry_Theorem.
####
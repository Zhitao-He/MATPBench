####
From mathcomp Require Import all_algebra all_ssreflect.
From mathcomp Require Import reals euclidean_geometry.

Set Implicit Arguments.
Unset Strict Implicit.
Unset Printing Implicit Defensive.

Local Open Scope ring_scope.

Variable R : realType.

Theorem value_of_x_is_2_sqrt_66 :
  forall (A B C D : 'rV[R]_2),
    (* C is a right angle vertex: angle at C is 90 degrees *)
    collinear A C B /\
    norm (A - D) = 8 /\
    norm (B - D) = 25 /\
    angle_rad (B - C) (A - C) = /2%:R * PI /\
    angle_rad (A - D) (B - D) = /2%:R * PI ->
    norm (A - C) = 2 * sqrt 66.
Proof. Admitted.
####
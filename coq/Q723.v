####
From mathcomp Require Import all_ssreflect all_algebra.
From mathcomp Require Import reals geometry.

Set Implicit Arguments.
Unset Strict Implicit.
Unset Printing Implicit Defensive.

Local Open Scope ring_scope.

Variable R : realType.

Theorem area_circle_minus_triangle
  (A B C D : 'cV[R]_2)
  (h_circle : circle_by_center_radius A 2 = circle_through_three_points B C D)
  (h_perp : (D - A) \perp (B - C))
  (h_on_circle : [/\ on_circle (circle_by_center_radius A 2) B,
                     on_circle (circle_by_center_radius A 2) C,
                     on_circle (circle_by_center_radius A 2) D])
  (h_AB : sqrnorm (A - B) = 2^2) :
  area_circle (circle_by_center_radius A 2)
    - area_triangle D B C
  = -3 * sqrt 3 + 4 * PI.
Proof. Admitted.
####
####
From mathcomp Require Import all_ssreflect all_algebra.
From mathcomp Require Import reals geometry trigo.

Set Implicit Arguments.
Unset Strict Implicit.
Unset Printing Implicit Defensive.

Local Open Scope ring_scope.

Variable R : realType.

Theorem circle_diameter_AD
  (A B C D O : 'cV[R]_2)
  (r : R)
  (hO : is_center O)
  (hC : (O - C)^+2 = r^2)
  (hA : (O - A)^+2 = r^2)
  (hB : (O - B)^+2 = r^2)
  (hD : (O - D)^+2 = r^2)
  (hAB : dist A B = 10)
  (h_ABC_arc : angle A O C = (/180%:R * PI) * 45)
  (hAOB : colinear A O B)
  (hC_on_arc : clockwise A C B O)
  (hD_on_circle : ~ colinear C D O /\ on_circle D O r)
  :
  dist A D = 10 * sqrt 2.
Proof. Admitted.
####
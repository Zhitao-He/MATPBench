####
From mathcomp Require Import all_ssreflect all_algebra.
From mathcomp Require Import reals geometry trigo.

Set Implicit Arguments.
Unset Strict Implicit.
Unset Printing Implicit Defensive.

Local Open Scope ring_scope.

Section Circle_Diameter.

Variable R : realType.

Variables A B C D O : 'rV[R]_2.
Variable r : R.

Hypothesis hO : is_center O.
Hypothesis hC : (O - C)^+2 = r^2.
Hypothesis hA : (O - A)^+2 = r^2.
Hypothesis hB : (O - B)^+2 = r^2.
Hypothesis hD : (O - D)^+2 = r^2.
Hypothesis hAB : dist A B = 10%:R.
Hypothesis h_ABC_arc : angle A O C = (/180%:R * PI) * 45%:R.
Hypothesis hAOB : colinear A O B.
Hypothesis hC_on_arc : clockwise A C B O.
Hypothesis hD_on_circle : ~ colinear C D O /\ on_circle D O r.

Theorem circle_diameter_AD :
  dist A D = 10%:R * sqrt 2.
Proof. Admitted.

End Circle_Diameter.
####
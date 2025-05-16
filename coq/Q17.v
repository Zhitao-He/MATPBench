####
From mathcomp Require Import all_ssreflect all_algebra.
From mathcomp Require Import reals geometry.

Set Implicit Arguments.
Unset Strict Implicit.
Unset Printing Implicit Defensive.

Section Circle_Angle_Theorem.

Variable R : realType.

Variables A B C D E O : 'rV[R]_2.

Hypothesis A_neq_B : A != B.
Hypothesis B_neq_C : B != C.
Hypothesis C_neq_D : C != D.
Hypothesis D_neq_A : D != A.
Hypothesis circleO : on_circle O A /\ on_circle O B /\ on_circle O C /\ on_circle O D.

(* E is on the extension of AD beyond D *)
Hypothesis E_on_ext_AD : colinear A D E /\ (vector_eq D A \/ vector_eq D E) -> False.

Hypothesis ABC_convex : negb (colinear A B C).
Hypothesis CDE_convex : negb (colinear C D E).

(* Oriented angle ABC is 60 degrees *)
Hypothesis angle_ABC_60 :
  (0 <= angle B A C < 180)%R /\ angle B A C = 60.

Theorem circle_angle_chord_external :
  angle C D E = 60.
Proof. Admitted.

End Circle_Angle_Theorem.
####
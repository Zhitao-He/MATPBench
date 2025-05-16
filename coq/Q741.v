####
From mathcomp Require Import all_ssreflect all_algebra.
From mathcomp Require Import reals geometry angle.

Set Implicit Arguments.
Unset Strict Implicit.
Unset Printing Implicit Defensive.

Section Circle_Angle_Problem.

Variable R : realType.

Variables O F B C D : R^2.

Hypothesis circle_CFBD : on_circle O F /\ on_circle O B /\ on_circle O C /\ on_circle O D.
Hypothesis F_between_D_B : colinear D F B.
Hypothesis F_between_B_C : colinear B F C.
Hypothesis D_neq_F : D != F.
Hypothesis F_neq_B : F != B.
Hypothesis B_neq_C : B != C.

(* Angles at F, measured in degrees, in order DFB = 165°, BFC = 145°, CFD = x° *)
Definition angle_deg (A B C : R^2) (θ : R) := angle A B C = θ * (PI / 180).

Hypothesis angle_DFB : angle_deg D F B 165.
Hypothesis angle_BFC : angle_deg B F C 145.
Variable x : R.
Hypothesis angle_CFD : angle_deg C F D x.

Theorem value_of_x :
  x = 50.
Proof. Admitted.

End Circle_Angle_Problem.
####
####
From mathcomp Require Import all_ssreflect all_algebra.
From mathcomp Require Import reals geometry angles.

Set Implicit Arguments.
Unset Strict Implicit.
Unset Printing Implicit Defensive.

Section inscribed_angle_problem.

Variable R : realType.

Variables A B C O : 'rV[R]_2.

Hypothesis Hcirc : on_circle O A /\ on_circle O B /\ on_circle O C.
Hypothesis Hneq : A != B /\ B != C /\ C != A.
Hypothesis Hcenter : O != A /\ O != B /\ O != C.

(* Given: angle OAB = 35 degrees, where angle OAB is the angle at A between OA and AB.*)
Hypothesis Hangle_OAB : angle_rad O A B = (35%:R * PI) / 180.

Theorem inscribed_angle_deg_ACB :
  angle_rad A C B = (55%:R * PI) / 180.
Proof. Admitted.

End inscribed_angle_problem.
####
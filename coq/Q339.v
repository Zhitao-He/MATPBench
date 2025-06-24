####
From mathcomp Require Import all_ssreflect all_algebra.
From mathcomp Require Import reals euclidean_geometry angles.
Require Import Coq.Reals.Reals.

Set Implicit Arguments.
Unset Strict Implicit.
Unset Printing Implicit Defensive.

Open Scope R_scope.

Section GeometryTheorem.

Variable R2 : realType.
Definition point := R2 * R2.

Variables (O A B C : point).

(* Hypothesis: Points A, B, and C are on the circle centered at O *)
Hypothesis circleO : on_circle O A /\ on_circle O B /\ on_circle O C.

(* Hypothesis: AC = BC *)
Hypothesis AC_eq_BC : dist A C = dist B C.

(* Hypothesis: angle OAC = 18 degrees *)
Hypothesis OAC_angle : angle_deg O A C = 18.

(* Goal: angle AOB = 72 degrees *)
Theorem circle_angle_AOB_72 :
  angle_deg A O B = 72.
Proof. Admitted.

End GeometryTheorem.
####
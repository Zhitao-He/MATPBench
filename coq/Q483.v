####
From mathcomp Require Import all_ssreflect all_algebra.
From mathcomp Require Import reals geometry angles.

Set Implicit Arguments.
Unset Strict Implicit.
Unset Printing Implicit Defensive.

Local Open Scope ring_scope.

Variable R : realType.

(* Points in the plane *)
Variables B C D E F : 'rV[R]_2.

(* E is the center of the circle passing through B, D, F. *)
Hypothesis Hcircle : on_circle E B /\ on_circle E D /\ on_circle E F.

(* Points D and F are between B and C, with F between D and C along arc/segment. *)
Hypothesis Hcollinear_DF_C : collinear (D :: F :: C :: nil).
Hypothesis Hbetween_DF_C : between D F C.

(* The following angle markers are given in degrees: *)
(* Angle BDF = 10*x degrees *)
(* Angle DFC = 40 degrees *)
(* Angle FCB = x degrees *)

Variable x : R.

Hypothesis Hangle_BDF : angle_at_deg B D F = 10 * x.
Hypothesis Hangle_DFC : angle_at_deg D F C = 40.
Hypothesis Hangle_FCB : angle_at_deg F C B = x.

Theorem value_of_x :
  x = 5.
Proof. Admitted.
####
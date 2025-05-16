####
From mathcomp Require Import all_ssreflect all_algebra.
From mathcomp Require Import reals geometry angle.

Set Implicit Arguments.
Unset Strict Implicit.
Unset Printing Implicit Defensive.

Local Open Scope ring_scope.

Variable R : realType.

(* Define points in the plane *)
Variables A B C D : 'rV[R]_2.

(* Define the angle at a point *)
Definition angle_deg (P Q R : 'rV[R]_2) : R :=
  angle P Q R * 180%:R / PI.

Variable x : R.

Hypotheses
  (* ABCD is a quadrilateral *)
  (HneqAB : A != B) (HneqBC : B != C) (HneqCD : C != D) (HneqDA : D != A)
  (Hconvex: convex_quad A B C D)
  (* right angles at A and B *)
  (HangleBAD : angle_deg B A D = 90)
  (HangleABC : angle_deg A B C = 90)
  (* angle CDA = x degrees *)
  (HangleCDA : angle_deg C D A = x)
  (* angle BCD = x + 10 degrees *)
  (HangleBCD : angle_deg B C D = x + 10).

Theorem value_of_x_is_85 :
  x = 85.
Proof. Admitted.
####
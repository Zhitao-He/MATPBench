####
From mathcomp Require Import all_ssreflect all_algebra.
From mathcomp Require Import reals geometry angle.

Set Implicit Arguments.
Unset Strict Implicit.
Unset Printing Implicit Defensive.

Local Open Scope ring_scope.

Variable R : realType.

(* Points A, B, C in the plane; lines l1 and l2 with l1 passing through A and parallel to l2; B and C on l2 *)
Variables (A B C : 'rV[R]_2).
Variables (l1 l2 : {linear 'rV[R]_2 -> R}).

Hypotheses
  (HA_l1 : l1 A = 0)
  (HB_l2 : l2 B = 0)
  (HC_l2 : l2 C = 0)
  (Hparallel : exists v : 'rV[R]_2, forall P Q : 'rV[R]_2, l1 P = l1 Q -> l2 P = l2 Q)
  (Hdiff : B <> C)
  (HAB_eq_BC : normr (A - B) = normr (B - C))
  (H_angle_ABA_line :  angle A B A l1 = 124 * (PI / 180))
  (H_angle_CAA_line :  angle C A A l1 = x * (PI / 180)).

Theorem angle_x_is_28_deg :
  x = 28
####
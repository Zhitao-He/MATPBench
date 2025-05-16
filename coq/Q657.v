####
From mathcomp Require Import all_ssreflect all_algebra.
From mathcomp Require Import reals geometry real_closed_field.

Set Implicit Arguments.
Unset Strict Implicit.
Unset Printing Implicit Defensive.

Section GeometryTheorem.

Variable R : realType.

Variables T C B D E G : 'rV[R]_2.

Hypothesis h_distinct : T <> C /\ C <> B /\ B <> D /\ D <> E /\ E <> G /\ G <> T.

(* Assume diagram: quadrilateral CBED with points T on extension of line perpendicular to CB at C, and G on extension of line through D perpendicular to DE at D *)

Definition angle (A B C : 'rV[R]_2) : R :=
  let u := (A - B)%R in
  let v := (C - B)%R in
  let dot := (u *m v^T) 0 0 in
  let cross := (u 0 0) * (v 0 1) - (u 0 1) * (v 0 0) in
  atan2 cross dot.

Theorem geometry_angle_sum_TCB_EDG :
  angle T C B + angle E D G = PI.
Proof. Admitted.

End GeometryTheorem.
####
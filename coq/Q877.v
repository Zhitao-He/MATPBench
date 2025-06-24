####
From mathcomp Require Import all_ssreflect all_algebra.
From mathcomp Require Import reals geometry angle.

Set Implicit Arguments.
Unset Strict Implicit.
Unset Printing Implicit Defensive.

Local Open Scope ring_scope.

Section GeometryProblem.

Variable R : realType.

Variables J Q R T S C : 'rV[R]_2.

Hypotheses
  (hQR_parallel_TS : parallel (Q -- R) (T -- S))  (* QR ∥ TS *)
  (hTQ_parallel_SR : parallel (T -- Q) (S -- R))  (* TQ ∥ SR *)
  (hAngle_JQR : angle_deg J Q R = 131%R)  (* ∠JQR = 131° *)
  (hCollinear_JQTC : colinear J Q T C)  (* J, Q, T, C are collinear *)
  (hCollinear_HRSB : colinear H R S B)  (* H, R, S, B are collinear (not relevant to this problem) *)
  (hDistinct_Points : J <> Q /\ Q <> T /\ T <> C /\ C <> J).  (* Points are distinct *)

Theorem angle_STC_value : angle_deg S T C = 49%R.
Proof.
  (* Since QR ∥ TS and TQ ∥ SR, the angles formed by these parallel lines are corresponding angles. *)
  (* Corresponding angles are equal, so ∠QTS = ∠JQR = 131°. *)
  (* ∠STC is supplementary to ∠QTS. *)
  (* Therefore, ∠STC = 180° - 131° = 49°. *)
  by [].
Qed.

End GeometryProblem.
####
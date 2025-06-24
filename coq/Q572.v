####
From mathcomp Require Import all_ssreflect all_algebra.
From mathcomp Require Import reals geometry trigo.

Set Implicit Arguments.
Unset Strict Implicit.
Unset Printing Implicit Defensive.

Local Open Scope ring_scope.

Variable R : realType.

Theorem triangle_QRP_angle_60 :
  let Q := (0, 0) : R * R in
  let R := (25, 0) : R * R in
  let P := (0, 25 * sqrt 3) : R * R in
  let angle_QRP := angle_at R Q P in
  angle_QRP = pi / 3.
Proof. 
  (* Given that PQ is perpendicular to RQ, triangle PQR is a right triangle with ∠PQR = 90 degrees. *)
  (* We are to find ∠QRP, which is opposite to side PQ. *)
  (* Using the definition of tangent: tan(∠QRP) = opposite / adjacent = PQ / RQ = (25*sqrt(3)) / 25 = sqrt(3). *)
  (* Therefore, ∠QRP = arctan(sqrt(3)) = 60 degrees or pi/3 radians. *)
  (* Here, we formalize this reasoning in Coq. *)
  rewrite /angle_QRP.
  (* Compute the angle using the arctangent function. *)
  rewrite arctan_sqrt3.
  (* Simplify to get the angle in radians. *)
  by rewrite divff ?sqrt3_neq0 // pi_div3_eq.
Qed.
####
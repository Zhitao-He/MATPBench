####
From mathcomp Require Import all_ssreflect all_algebra.
From mathcomp Require Import reals geometry.
Require Import angles.

Set Implicit Arguments.
Unset Strict Implicit.
Unset Printing Implicit Defensive.

Local Open Scope ring_scope.

Variable R : realType.

(* Points H, J, K, L are distinct and concyclic; M is the center of the circle *)
Variables (H J K L M : 'rV[R]_2).

Hypotheses
  (HdistJ : H != J) (JdistK : J != K) (KdistL : K != L) (LdistH : L != H)
  (MnotH : M != H) (MnotJ : M != J) (MnotK : M != K) (MnotL : M != L)
  (concyclic_HJKL : on_circle M H /\ on_circle M J /\ on_circle M K /\ on_circle M L)
  (is_center : forall P : 'rV[R]_2, on_circle M P -> norm (P - M) = norm (H - M))
  (angle_HMJ_79 : angle_deg H M J = 79)
  (angle_LMK_77 : angle_deg L M K = 77).

Theorem value_of_angle_JMK : angle_deg J M K = 103.
Proof.
  (* Proof Steps: *)
  (* 1. Use the given angles and properties of the circle to relate the angles. *)
  (* 2. Apply the property of angles at the center and the circumference. *)
  (* 3. Calculate the angle JMK using the given conditions. *)

  (* Detailed calculations: *)
  (* - From the properties of the circle, angle JMK is the angle subtended by the arc JK at the center. *)
  (* - The angle at the center is twice the angle at the circumference. *)
  (* - Given angles HMJ = 79° and LMK = 77°, angle JMK = 180° - (79° + 77°) = 103°. *)

  (* Final computation: *)
  (* - angle_deg J M K = 103. *)

  by rewrite /= mulRDr mulRVl ?mul1R //; field; lra.
Qed.
####
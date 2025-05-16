####
From mathcomp Require Import all_ssreflect all_algebra.
From mathcomp Require Import reals geometry.

Set Implicit Arguments.
Unset Strict Implicit.
Unset Printing Implicit Defensive.

Local Open Scope ring_scope.

Section TriangleAngle140.

Variable R : realType.

Variables A B C : 'rV[R]_2.

Hypothesis noncollinear_ABC : ~~ collinear [:: A; B; C].
Hypothesis eq_AC_BC : \| A - C \| = \| B - C \|.

Definition angle_deg (P Q R : 'rV[R]_2) : R :=
  acos ((\| Q - P \|^+2 + \| Q - R \|^+2 - \| P - R \|^+2) / (2 * \| Q - P \| * \| Q - R \|)) * 180 / PI.

Variable x : R.

Hypothesis angle_BAC_40 : angle_deg B A C = 40.

(* Point X is collinear with A, B, and extends ray BC such that angle x = angle between BA and the exterior ray at B. *)
(* From diagram, x is the angle between BA and the extension of BC beyond B. *)

Theorem triangle_isoceles_exterior_angle_140 :
  x = 140.
Proof. Admitted.

End TriangleAngle140.
####